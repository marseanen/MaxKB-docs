## 1 Добавление модели

Выберите провайдера `Volcengine (Doubao)` и укажите параметры:

* Имя модели: произвольное имя в MaxKB.     
* Тип модели: LLM/эмбеддинги/ASR/TTS/визуальная/генерация изображений.

Дополнительные параметры подключения Doubao LLM:

* Базовая модель: ID эндпоинта онлайн‑инференса.        
* Домен API: https://ark.cn-beijing.volces.com/api/v3
* API Key: Эндпоинт → Вызов API → Авторизация API Key → выбрать и скопировать ключ.

Для ASR/TTS укажите App ID, Access Token, Cluster ID:

* Домен App: для ASR — `wss://openspeech.bytedance.com/api/v2/asr`, для TTS — `wss://openspeech.bytedance.com/api/v1/tts/ws_binary`
* App ID: ID приложения в Volcengine. 
* Access Token: учётные данные для приложения. 
* Cluster ID: сервисная информация приложения.


![火山引擎 LLM模型](../../img/model/doubao_llm_apikey.png)

![火山引擎 LLM模型](../../img/model/doubao_jieru.png)


## 2 Примеры конфигурации

Volcengine — пример LLM:
![火山引擎 LLM模型](../../img/model/huoshan_llm.png){ width="500px" }

Volcengine — пример эмбеддингов:
![火山引擎 向量模型](../../img/model/huoshan_embedding.png){ width="500px" }

Volcengine — пример ASR:
![火山引擎 语音识别模型](../../img/model/huoshan_asr.png){ width="500px" }

Volcengine — пример TTS:
![火山引擎 语音合成模型](../../img/model/huoshan_tts.png){ width="500px" }

Volcengine — пример визуальной модели:
![火山引擎 视觉模型](../../img/model/doubao_vision.png){ width="500px" }

Volcengine — генерация изображений: создайте ключ в консоли Volcengine (Access Control → API Access Keys). Пример:
![火山引擎 图片生成](../../img/model/doubao_gen1.png){ width="500px" }

![火山引擎 图片生成](../../img/model/doubao_gen2.png){ width="500px" }

