# Аутентификация входа
!!! Abstract "" 
    Поддерживаются протоколы единой аутентификации LDAP, CAS, OIDC, OAUTH2, а также вход по QR и без пароля через WeCom, DingTalk и Feishu. Это закрывает корпоративные требования к сильной аутентификации и контролю доступа.

![扫码登录](../../img/system/login_auth_view.png)

## 1 LDAP

!!! Abstract ""  
    Смотрите пример настройки ниже. Не забудьте включить «Включить LDAP‑аутентификацию».     
    Подсказка: после настройки нажмите «Тест соединения», чтобы проверить корректность параметров и сети.      
![LDAP](../../img/system/LDAP.png)


## 2 CAS

!!! Abstract ""
    Смотрите пример ниже. Включите «Включить CAS‑аутентификацию».    
    **Примечание:** callback для CAS — это URL MaxKB + /api/cas, например: http://40.100.86.240:8080/admin/api/cas.
![CAS](../../img/system/CAS.png)


## 3 OIDC

!!! Abstract ""
    Смотрите пример ниже. Включите «Включить OIDC‑аутентификацию».   
    **Примечание:** callback для OIDC — URL MaxKB + /api/oidc, например: http://40.100.86.240:8080/admin/api/oidc.
![OIDC](../../img/system/OIDC.png)

## 4 OAUTH2

!!! Abstract ""
    Смотрите пример ниже (на примере GitHub). Включите «Включить OAUTH2‑аутентификацию».   
    **Примечание:** callback для OAUTH2 — URL MaxKB + /api/oauth2, например: http://40.100.86.240:8080/admin/api/oauth2.
![OAHTU2](../../img/system/oauth2.png)

## 5 Интеграции платформ

!!! Abstract ""
    Поддерживаются WeCom, DingTalk, Feishu, вход по QR и без пароля.

![扫码登录](../../img/system/scan_code%20_login.png)



### 5.1 Интеграция WeCom

#### 5.1.1 Настройка WeCom

!!! Abstract ""
    Для интеграции WeCom заполните:
    
    - Corp ID: ID организации (в консоли WeCom → «Информация компании»).
    - Agent ID: идентификатор кастомного приложения WeCom (виден при создании/просмотре приложения).
    - App Secret: секрет кастомного приложения.
    - Callback URL: адрес входа в MaxKB.


!!! Abstract ""
    Для входа по QR администратор WeCom должен создать кастомное приложение в [консоли WeCom](https://work.weixin.qq.com/wework_admin/frame) и опубликовать его.

![企微应用创建](../../img/system/qiwei_create_app1.png)

![企微应用创建](../../img/system/obtain_wxid.png)


!!! Abstract ""
    Шаг 1: Создать приложение в «Управление приложениями → Приложения → Кастомные», после создания доступны Agent ID и Secret.

![企微应用创建](../../img/system/qiwei_create_app.png)

![企微应用信息](../../img/system/qiwei_appinfo.png)



!!! Abstract ""
    Шаг 2: Настроить доверенный домен в «Интерфейсы разработчика». См. [конфигурацию доверенных доменов](https://kb.fit2cloud.com/?p=915e0151-5581-406f-ac2e-22afb9b3b4bf).

![设置可信域名](../../img/system/qiwei_yuming.png)

!!! Abstract ""
    Шаг 3: Указать домен callback для авторизации в «Авторизация WeCom».
![设置回调域](../../img/system/qiwei_callback.png)

!!! Abstract ""
    Шаг 4: Настроить список доверенных IP в «Доверенные IP».
![配置可信IP](../../img/system/qiwei_ip.png)

!!! Abstract ""
    После публикации приложения заполните параметры в настройках WeCom‑логина MaxKB и проверьте подключение.
![企业微信配置](../../img/system/qiwei_setting.png)

!!! Abstract ""
    В дальнейшем на странице входа MaxKB выбирайте WeCom для входа по QR.

#### 5.1.2 Настройка входа без пароля (WeCom)

!!! Abstract ""
    Формирование ссылки на главную см. в гайде WeCom: [OAuth2 link](https://developer.work.weixin.qq.com/document/path/91120#%E6%9E%84%E9%80%A0%E4%BC%81%E4%B8%9Aoauth2%E9%93%BE%E6%8E%A5)。  
    Формат и параметры:

    - Ссылка: https://open.weixin.qq.com/connect/authorize?redirect_uri=http(s)://xxx.xxx.xxx/admin/api/wecom/oauth2&response_type=code&scope=snsapi_privateinfo&appid=CorpID&agentid=AgentID&state=maxkb#wechat_redirect
    - CORPID: CorpID организации
    - REDIRECT_URI: callback после авторизации (urlencode), напр.: https%3A%2F%2Fmk-enterprise.fit2cloud.cn/api/wecom/oauth2
    - SCOPE: snsapi_base
    - AGENTID: ID приложения

    Пример: https://open.weixin.qq.com/connect/oauth2/authorize?redirect_uri=http(s)://xxx.xxx.xxx/admin/api/wecom/oauth2&response_type=code&scope=snsapi_privateinfo&appid=ww5fad05ad336d118c&agentid=1000012&state=maxkb#wechat_redirect

![企业微信配置](../../img/system/weichat_oauth2.png)

!!! Abstract ""
    После настройки откройте MaxKB без пароля из рабочего стола WeCom.

![企业微信配置](../../img/system/weichat_oauth3.png)

### 5.2 Интеграция DingTalk

#### 5.2.1 Настройка DingTalk

!!! Abstract ""
    Для интеграции DingTalk заполните:

    - Corp ID: ID организации (вверху в DingTalk Open Platform).
    - APP Key: идентификатор приложения (в «Credentials & Basic Info»).
    - App Secret: секрет приложения (там же).
    - Callback URL: URL входа MaxKB.

!!! Abstract ""
    Для входа по QR создайте приложение на [DingTalk Open Platform](https://open-dev.dingtalk.com/) и настройте его.

    第一步：创建应用。在【应用开发-钉钉应用】中点击【创建应用】，应用创建完后在【凭证与基础信息】可查案 APPKey 和 APPSecret 信息。
![钉钉创建应用](../../img/system/dingding_app_create.png)
![钉钉应用信息](../../img/system/dingding_app_info.png)

!!! Abstract ""
    第二步：进入到【权限管理】中，添加如下图所示的权限即可。

![钉钉应用信息](../../img/system/dingding_permissions.png)

!!! Abstract ""    
    Шаг 3: в «Управление версиями и публикация» заполните версию/описание и опубликуйте.
![钉钉应用信息](../../img/system/dingding_app_release.png)

!!! Abstract ""
    完成配置后发布，然后在 MaxKB 钉钉扫码登录扫码配置页面进行配置并保存。

![钉钉创建应用](../../img/system/dingding_setting.png)

!!! Abstract ""
    后续即可在 MaxKB 登陆页面点击选择钉钉进行扫码登陆。


#### 5.2.2 Вход без пароля (DingTalk)

!!! Abstract ""
    Добавьте «Web App» в разделе «Возможности».
    

![钉钉创建应用](../../img/system/dingding_add_webapp.png)

!!! Abstract ""
    Укажите «Главная приложения» и «Главная для ПК».
    
    Формат: http(s)://xxx.xxx.xxx/admin/login?client=dingtalk=CORPID (замените CORPID реальным corpId).

![钉钉应用配置](../../img/system/dingding_webapp_config.png)

!!! Abstract ""
    В «Настройках безопасности» задайте Redirect URL и адрес для входа внутри клиента.
![钉钉安全配置](../../img/system/dingding_security_config.png)

!!! Abstract ""
    В «Вход по интеграции» настройте «Callback domain».
![钉钉安全配置](../../img/system/dingding_share_config.png)

!!! Abstract ""
    应用发布后，即可在钉钉工作台免登录访问 MaxKB。    

![钉钉安全配置](../../img/system/dingdingview.png)

### 5.3 Интеграция Feishu

#### 5.3.1 Настройка Feishu

!!! Abstract ""
    Для интеграции Feishu заполните:

    - APP Key;
    - Corp ID;
    - App Secret: используется вместе с callback для авторизации без пароля;
    - Callback URL: URL MaxKB + '/api/feishu', напр.: http://xx.xxx.xx.xxx/api/feishu.

!!! Abstract ""
    Для входа по QR создайте «Self‑Built App» в [Feishu Open Platform](https://open.feishu.cn/), опубликуйте и настройте параметры в MaxKB.

!!! Abstract ""
    第一步：创建企业自建应用。点击【创建企业自建应用】，输入应用名称、描述以及上传应用图标后，点击【创建】。
![飞书创建](../../img/system/feishu_create_app.png)

!!! Abstract ""
    第二步：配置重定向 URL。在【开发配置-安全设置】中，输 入MaxKB 飞书扫码配置弹出框中的回调地址，点击【添加】。
![飞书配置回调URL](../../img/system/feishu_url.png)

!!! Abstract ""
    第三步：发布应用。在【版本管理与发布】中，输入应用版本号、更新说明等信息，点击【保存】，完成应用发布。
![飞书发布应用](../../img/system/feishu_app_release.png)

![飞书配置](../../img/system/feishu_setting.png)

!!! Abstract ""
    发布应用后，即可在 MaxKB 登陆页面点击选择飞书进行扫码登陆。     

#### 5.3.2 Вход без пароля (Feishu)

!!! Abstract ""
    添加【页面应用】能力。

![飞书添加页面应用](../../img/system/feishu_add_webapp.png)

!!! Abstract ""
    Укажите домашнюю страницу для Desktop, напр.: http(s)://xxx.xxx.xxx/admin/login?client=lark&appId=cli_a7e1c1ddexxxxx.
![飞书页面应用配置](../../img/system/feishu_webapp_config.png)

!!! Abstract ""
    Добавьте Redirect URL в «Настройках безопасности».

![飞书安全配置](../../img/system/feishu_security_config.png)

!!! Abstract ""
    После публикации получите доступ к MaxKB без пароля из рабочего стола Feishu.

![飞书安全配置](../../img/system/feishu_view.png)
