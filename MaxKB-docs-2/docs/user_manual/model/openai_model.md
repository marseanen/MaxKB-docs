## 1 Добавление модели

Выберите провайдера `OpenAI` и введите необходимые параметры:

* Имя модели: произвольное имя в MaxKB.    
* Тип модели: LLM/эмбеддинги/ASR/TTS/визуальная модель/генерация изображений.   
* Базовая модель: имя модели для выбранного типа; можно ввести своё, но оно должно соответствовать поддерживаемым OpenAI именам.
* Домен API: для глобального OpenAI — `https://api.openai.com/v1`; для прокси в КНР — `proxy_base/v1`.
* API Key: ключ доступа OpenAI.

![OpenAI 模型](../../img/model/add_openai.png)

## 2 Примеры конфигураций

OpenAI — пример LLM:
![OpenAI 模型](../../img/model/openai_llm.png){ width="500px" }

OpenAI — пример эмбеддингов:
![OpenAI 模型](../../img/model/openai_embed.png){ width="500px" }


OpenAI — пример ASR:
![OpenAI 模型](../../img/model/openai_asr.png){ width="500px" }


OpenAI — пример TTS:
![OpenAI 模型](../../img/model/openai_tts.png){ width="500px" }

OpenAI — пример визуальной модели:
![OpenAI 模型](../../img/model/openai_vision.png){ width="500px" }

OpenAI — пример генерации изображений:
![OpenAI 模型](../../img/model/openai_verison_gen.png){ width="500px" }