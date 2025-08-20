## 1 Добавление модели

Перед добавлением модели iFLYTEK Spark зарегистрируйтесь на [платформе iFLYTEK](https://www.xfyun.cn/) и создайте приложения для нужных типов моделей. Платформа сгенерирует APPID, API Secret, API Key.

Выберите провайдера `iFLYTEK Spark` и заполните параметры:

* Имя модели: произвольное имя в MaxKB.  
* Тип модели: LLM/эмбеддинги/ASR/TTS.   
* Базовая модель: domain из документации API (можно ввести своё).    
* Домен API: для каждой модели свой; см. [документацию iFLYTEK](https://www.xfyun.cn/doc/).
* APP ID: идентификатор приложения.
* API Key: ключ доступа приложения.
* API Secret: секрет приложения.


![讯飞APP](../../img/model/xunfei_app.png)


## 2 Примеры конфигурации

iFLYTEK Spark — пример LLM:

![讯飞模型](../../img/model/xunfei_llm.png){ width="500px" }

iFLYTEK Spark — пример эмбеддингов:

![讯飞模型](../../img/model/xunfei_embed.png){ width="500px" }

iFLYTEK Spark — пример ASR:

![讯飞模型](../../img/model/xunfei_iat.png){ width="500px" }

iFLYTEK Spark — пример TTS:

![讯飞模型](../../img/model/xunfei_tts.png){ width="500px" }