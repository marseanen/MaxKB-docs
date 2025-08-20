# Как запустить модели LLM в Ollama на GPU

На примере NVIDIA показаны шаги запуска больших моделей в режиме GPU в Ollama.


## 1 Установка NVIDIA Container Toolkit

На примере Ubuntu 22.04 (для других систем см. [официальную документацию NVIDIA](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/arch-overview.html))

    - Настройка источников apt
    ```
    curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
    && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
        sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
        sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
    ```
    - Обновление списка пакетов
    ```
    sudo apt-get update
    ```
    - Установка тулкита
    ```
    sudo apt-get install -y nvidia-container-toolkit
    ```

## 2 Запуск Ollama с доступом к GPU

```
# Запуск контейнера ollama в фоне с доступом ко всем доступным GPU NVIDIA на хосте
docker run --gpus all -d -v /opt/ai/ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```

## 3 Загрузка моделей через Ollama

```
# Онлайн‑загрузка и запуск модели
docker exec -it ollama ollama run qwen:7b
```

## 4 Добавление модели Ollama в MaxKB

После загрузки и запуска сервиса модели добавьте соответствующую модель в MaxKB и используйте её.
![Добавить модель](../img/FAQ/addmodel.png)