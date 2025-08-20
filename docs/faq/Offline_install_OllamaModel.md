# Как офлайн‑развернуть LLM‑модель в Ollama


!!! Abstract "" 
    На примере модели qwen:0.5b показан процесс офлайн‑развертывания LLM в Ollama.

## 1 Загрузка модели

!!! Abstract ""
    Перейдите на huggingface и скачайте файл модели qwen1_5-0_5b-chat-q5_k_m.gguf.
    ```
    https://huggingface.co/Qwen/Qwen1.5-0.5B-Chat-GGUF/tree/main
    ```
![Загрузка модели](../img/FAQ/downModel.png)

## 2 Загрузка модели на сервер

!!! Abstract ""
    Загрузите скачанный файл Qwen1.5-0.5B-Chat-GGUF на сервер, где установлен Ollama.

## 3 Создание Ollama Modelfile

!!! Abstract ""
    Создайте файл Modelfile со следующим содержимым:
    ```
    FROM ./qwen1_5-0_5b-chat-q5_k_m.gguf

    TEMPLATE """{{ if .System }}<|im_start|>system
    {{ .System }}<|im_end|>{{ end }}<|im_start|>user
    {{ .Prompt }}<|im_end|>
    <|im_start|>assistant
    """

    PARAMETER stop "<|im_start|>"
    PARAMETER stop "<|im_end|>"
    ```
    Примечание: для разных моделей содержимое Modelfile отличается. См. [параметры](https://ollama.com/library/qwen:0.5b) на сайте Ollama.

![Шаблон параметров модели](../img/FAQ/modelSetting.png)


## 4 Создание модели в Ollama

!!! Abstract ""
    Выполните команду для создания модели:
    ```
    ollama create qwen:0.5b -f Modelfile
    ```
    Проверьте, что модель создана:
    ```
    ollama list
    ```

![Список моделей в ollama](../img/FAQ/ollamaList.png)

## 5 Добавление созданной приватной модели в MaxKB

![Добавление модели в MaxKB](../img/FAQ/MaxKBaddModel.png)