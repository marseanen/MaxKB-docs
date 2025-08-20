## 1 Добавление модели

Перед добавлением модели Tencent Hunyuan подключите сервис Hunyuan в Tencent Cloud и создайте ключи доступа.

Выберите провайдера `Tencent Hunyuan` и заполните параметры:

* Имя модели: произвольное имя в MaxKB.     
* Тип модели: LLM/эмбеддинги/визуальная/генерация изображений.   
* Базовая модель: имя модели (можно ввести своё).         
* APPID: в консоли Tencent Cloud → Управление доступом → Управление ключами API. 
* SecretId: там же.
* SecretKey: скачайте при создании ключа в консоли. 

![tencent apikey](../../img/model/tencent_apikey.png)

![tencent apikey](../../img/model/tencent_view.png)


## 2 Примеры конфигурации

Hunyuan — пример LLM:

![hunyuan 大语言模型](../../img/model/hunyuan_LLM.png){ width="500px" }

Hunyuan — пример эмбеддингов:
![hunyuan 向量模型](../../img/model/hunyuan_embed.png){ width="500px" }

Hunyuan — пример визуальной модели:
![hunyuan 视觉模型模型](../../img/model/hunyuan_vision.png){ width="500px" }

Hunyuan — генерация изображений: по умолчанию 768×768, 1 изображение, стиль 201 (аниме). Пример:
![hunyuan 图片生成模型](../../img/model/hunyuan_vision_gen1.png){ width="500px" }

![hunyuan 图片生成模型](../../img/model/hunyuan_vision_gen2.png){ width="500px" }
