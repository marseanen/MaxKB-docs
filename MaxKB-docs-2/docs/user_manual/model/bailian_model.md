## 1 Добавление модели

Выберите провайдера `Alibaba Bailian` и заполните параметры:

* Имя модели: произвольное имя в MaxKB.
* Тип модели: LLM/эмбеддинги/rerank/ASR/TTS/визуальная/генерация изображений.   
* Базовая модель: имя модели для выбранного типа (можно ввести своё).
* Домен API: адрес API сервиса (для LLM обязателен).
* API Key: ключ доступа к сервису API.

**Важно:** домены API для разных LLM отличаются — см. примеры вызова для выбранной базовой модели.

![阿里云百炼 APIKEY](../../img/model/aliyun_bailian_apikey.png)

![阿里云百炼 APIKEY](../../img/model/add_bailian.png)

![阿里云百炼](../../img/model/bailian.png)

## 2 Примеры конфигурации

Alibaba Bailian — пример LLM:

![阿里云百炼 大语言模型配置](../../img/model/bailian_llm.png){ width="500px" }

Alibaba Bailian — пример эмбеддингов:

![阿里云百炼 向量模型配置](../../img/model/bailian_embed.png){ width="500px" }

Alibaba Bailian — пример rerank:
![阿里云百炼 重排模型配置](../../img/model/bailian_reranker.png){ width="500px" }

Alibaba Bailian — пример ASR:
![阿里云百炼 语音识别模型配置](../../img/model/bailian_asr.png){ width="500px" }

Alibaba Bailian — пример TTS:
![阿里云百炼 语音合成模型配置](../../img/model/bailian_tts.png){ width="500px" }

Alibaba Bailian — пример визуальной модели:
![阿里云百炼 视觉模型模型配置](../../img/model/bailian_vision.png){ width="500px" }

Alibaba Bailian — генерация изображений: по умолчанию 1024×1024, 1 изображение, стиль <auto> (случайный). Пример:
![阿里云百炼 图片生成模型配置](../../img/model/bailian_vision_gen1.png){ width="500px" }

![阿里云百炼 图片生成模型配置](../../img/model/bailian_vision_gen2.png){ width="500px" }



