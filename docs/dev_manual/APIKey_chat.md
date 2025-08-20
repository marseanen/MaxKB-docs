Приложения MaxKB поддерживают подключение в формате OpenAI SDK, а также предоставляют системный SDK. В профессиональной версии доступен полноценный платформенный SDK. Подробнее см.: [Системный API](../user_manual/X-Pack/system_API.md).

## 1 Стандартный формат OpenAI API

Приложения MaxKB совместимы с форматом OpenAI API: достаточно заменить Base URL и API Key на значения, выданные вашим приложением MaxKB.

![API doc](../img/dev/openai_baseurl.png)

```
# Замените url и Authorization на фактические Base URL и API Key вашего приложения MaxKB.

curl https://maxkb.fit2cloud.com/api/application/xxxxxxxx-8c56-11ef-a99e-0242ac140003/chat/completions \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer application-xxxxxxxxf00e21a7530d1177c20967"  \
    -d '{
        "model": "gpt-3.5-turbo",
        "messages": [
            {
              "role": "你是杭州飞致云信息科技有限公司旗下产品 MaxKB 知识库问答系统的智能小助手，你的工作是帮助 MaxKB 用户解答使用中遇到的问题，用户找你回答问题时，你要把主题放在 MaxKB 知识库问答系统身上。",
              "content": "MaxKB 是什么？"
            }
        ]
    }'
```

## 2 Системный API

### 2.1 Открыть документацию API

Скопируйте и откройте адрес swagger в информации о приложении.

![API doc](../img/dev/app_swaagger.png)

### 2.2 Аутентификация API Key
  
![APIKEY](../img/dev/app_apikey.png)

### 2.3 Получить информацию о приложении

Вызовите метод profile, чтобы получить подробную информацию о приложении (id, name и т.д.).
  
![ profile](../img/dev/app_profile.png)

### 2.4 Открыть сессию

Вызовите метод открытия сессии, передайте id приложения из предыдущего шага и получите id сессии.
  
![appid](../img/dev/chat_open.png)

### 2.5 Вести диалог

Вызовите метод диалога, передав id сессии.
  
![chatid](../img/dev/app_chat.png)