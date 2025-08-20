# База знаний по документам Feishu

## 1 Настройка бота Feishu

Поддерживается построение БЗ на основе документов Feishu (облако и таблицы).  
Важно: доступ к документам обеспечивается через бота Feishu с соответствующими правами; добавьте бота как коллаборатора в группе.

### 1.1 Создание бота Feishu

В [Feishu Developer Platform](https://open.feishu.cn/app/) создайте «Self‑Built App» и заполните информацию.

![飞书创建](../../img/app/feishu_create_app.png)

点击【添加应用能力】，选择 【按能力添加-机器人】，点击【添加】
![飞书添加机器人](../../img/app/feishu_add_robot.png)

### 1.2 Добавление прав

В «Управлении правами» вставьте конфигурацию ниже в «API Permissions», выделите все и включите оптом.

```
docs:document:export,docx:document:readonly,drive:drive,space:document:retrieve
```

![飞书文档权限](<../../img/dataset/feishu_doc_access.png>)

### 1.3 Получение параметров

Получите APP ID, APP Secret и Folder Token.
APP ID и APP Secret — на странице «Credentials & Basic Info».
![飞书应用信息i](../../img/app/feishu_app_info.png)

### 1.4 Публикация приложения

«Создать версию», заполните и сохраните. После одобрения настройте группу.

![飞书应用发布](../../img/app/feishu_robot_release.png)

### 1.5 Настройки группы
    
Добавьте бота в внутреннюю группу.

![飞书群机器人](../../img/app/feishu_group_robot1.png)


В папке документов Feishu добавьте группу с ботом как коллаборатора.

![飞书群机器人](../../img/app/feishu_doc_collaborator.png)

## 2 Создание БЗ по документам Feishu
    
При создании БЗ выберите тип «Feishu» и укажите:

- App ID: идентификатор приложения Feishu.
- App Secret: ключ приложения.
- Folder Token: уникальный идентификатор папки в облаке Feishu, берётся из ссылки выбранной папки.

![飞书文件夹](../../img/app/feishu_folder_token.png)
![飞书知识库创建](../../img/app/feishu_kb_create.png)          


В БЗ Feishu нажмите «Импорт документов», выберите файлы в папке Feishu и начните импорт — документы будут загружены в MaxKB.

![飞书文档筛选](../../img/app/feishu_doc_select.png)
![飞书文档筛选](../../img/app/feishu_doc_select2.png)