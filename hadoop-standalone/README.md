# Hadoop on Docker

## Содержание

- [Как использовать](#quick-start)
- [Dokcerсеть](#network)

### Требования

 - Установите [Docker](https://docs.docker.com/get-docker/) и [Docker Compose](https://docs.docker.com/compose/install/)


## <a name="quick-start"></a>Как использовать

### Загрузка

1. Клонируйте данный репозиторий

```bash
git clone https://github.com/NameArtem/hadoop-spark-standalone-docker.git
```

2. Запуск docker-composer'a:
```
  docker-compose up
```

3. Пишите и создавате mappers/reducers в папке `submit`. Не изменятей Dockerfile, но вы можете менять run.sh. Для запуска используйте (из корня, не в директории submit):
```
  make mytask
```

4. URL для доступа к среде хадуп (доступны, пока запущены контейнеры):

* Namenode: http://localhost:9870/dfshealth.html#tab-overview
* History server: http://localhost:8188/applicationhistory
* Datanode: http://localhost:9864/
* Nodemanager: http://localhost:8042/node
* Resource manager: http://localhost:8088/


## <a name="network"></a>Docker сеть

`docker-compose` создает сеть, которую можно найти по команде:  `docker network list`, имя сети `docker-hadoop_default`.

Запустите `docker network inspect` с параметром `docker-hadoop_default` для поиска IP адресов интерфеса
