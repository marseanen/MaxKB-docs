# Настройка среды разработки

## 1 Структура проекта

```
.          
├── LICENSE                 # License        
├── README.md           
├── apps                    # Корневая папка бэкенда        
│ ├── application           # Приложения
│ ├── common                # Общие ресурсы проекта
│ ├── dataset               # База знаний
│ ├── embedding             # Векторизация
│ ├── function_lib          # Библиотека функций
│ ├── ops                   # 
│ ├── setting               # Настройки
│ ├── smartdoc              # Основная директория проекта          
│ ├── users                 # Пользователи          
│ └── manage.py             # Точка входа Django         
├── installer               # Установка  
├── pyproject.toml          # Зависимости бэкенда         
└── ui                      # Корневая папка фронтенда          
├── config_example.yml      # Пример конфигурации             
├── main.py                 # Точка входа проекта              
```     

## 2 Подготовка окружения          

- **Фронтенд**       
  Установите [node](https://nodejs.org/) версии v16+     
- **Бэкенд**        
  Установите [python](https://www.python.org/downloads/release/python-3115/) версии v3.11.x  
  Установите [pycharm](https://www.jetbrains.com/pycharm/download/)
- **База данных**   
  Установите [PostgreSql](https://www.postgresql.org/) версии v15.x

## 3 Локальная конфигурация

### 3.1 Создание базы данных

В PostgreSql вручную создайте БД приложения MaxKB с именем `maxkb`.
```
# Создать БД
CREATE DATABASE "maxkb"; 
# Переключиться на БД
\c "maxkb"; 
# Создать расширение vector
CREATE EXTENSION "vector";
```

### 3.2 Конфигурационный файл

Перед запуском подготовьте конфигурационные файлы и директории

- Подготовьте конфигурацию

```bash
# Скопируйте config_example.yml в каталог /opt/maxkb/conf
cp config_example.yml /opt/maxkb/conf
```

- Настройте /opt/maxkb/conf/config_example.yml 

```
# Настройки БД (замените на параметры вашей среды)
DB_NAME: maxkb
DB_HOST: localhost
DB_PORT: 5432
DB_USER: root
DB_PASSWORD: xxx
DB_ENGINE: django.db.backends.postgresql_psycopg2
      
# Параметры моделей
# Путь к моделям: если EMBEDDING_MODEL_NAME — абсолютный путь, то игнорируется; иначе модель будет скачана из https://huggingface.co/ в текущий каталог
EMBEDDING_MODEL_PATH: /opt/maxkb/model/
# Имя модели: если указать путь — загрузится модель из каталога; если имя — будет скачана из https://huggingface.co/ в EMBEDDING_MODEL_PATH
EMBEDDING_MODEL_NAME: /opt/maxkb/model/shibing624_text2vec-base-chinese
```

## 4 Разработка и отладка

### 4.1 Запуск фронтенда

```bash
# В каталоге `ui` установите зависимости фронтенда
npm install
    
# Затем запустите проект
npm run dev
```

После успешного запуска увидите экран, как ниже.

![Запуск фронтенда](../img/dev/npm_run.png){width="500px"}


### 4.2 Запуск бэкенда

Необходимо запустить веб‑сервис, локальный сервис моделей и очередь асинхронных задач.  
Важно: команды выполнять в корне проекта

В корне проекта MaxKB поочерёдно выполните команды для запуска веб‑сервиса.

```
# Установить менеджер пакетов poetry
pip install poetry
    
# Установить зависимости бэкенда
poetry install
* Примечание: в Китае настройте источник poetry, иначе загрузка может быть очень медленной: `poetry source add --priority=primary mirrors http://mirrors.aliyun.com/pypi/simple`
    
# Запустить проект
python main.py start
```

![Запуск веб‑сервиса](../img/dev/main_start.png){width="500px"}

В корне проекта MaxKB выполните команды для запуска локального сервиса моделей.

```
# Запуск
python main.py dev local_model
```

![Локальный сервис моделей](../img/dev/main_localmodel.png){width="500px"}

В корне проекта MaxKB выполните команды для запуска сервиса асинхронных задач.

```
# Запуск
python main.py dev celery
```

![Сервис асинхронных задач](../img/dev/main_celery.png){width="500px"}

## 5 Доступ к проекту

После успешного запуска фронтенда и бэкенда откройте проект в браузере по адресу, показанному в выводе фронтенда.

![Доступ через браузер](../img/dev/maxkb_running.png)
