# Apache Spark Standalone Cluster on Docker

Сборка кластера **Apache Spark** для обучения на базе Docker. Работает в Standalone режиме с **JupyterLab** в качестве интерфеса.

Для обучения Apache Spark на **Scala**, **Python** (PySpark) и **R** (SparkR). Примеры запусков можно найти в Jupyter [notebooks](build/workspace/).

<p align="center"><img src="docs/image/cluster-architecture.png"></p>

## Содержание

- [Обзор кластера](#quick-start)
- [Технические требования](#tech-stack)

## <a name="quick-start"></a>Обзор кластера

### Адреса

| Application     | URL                                      | Description                                                |
| --------------- | ---------------------------------------- | ---------------------------------------------------------- |
| JupyterLab      | [localhost:8888](http://localhost:8888/) |  Jupyter notebooks          |
| Spark Driver    | [localhost:4040](http://localhost:4040/) | Spark Driver web ui                                        |
| Spark Master    | [localhost:8080](http://localhost:8080/) | Spark Master node                                          |
| Spark Worker I  | [localhost:8081](http://localhost:8081/) | Spark Worker node с 1 ЦПУ и 512m ОЗУ (default) |
| Spark Worker II | [localhost:8082](http://localhost:8082/) | Spark Worker node с 1 ЦПУ и 512m ОЗУ (default) |

### Требования

 - Установите [Docker](https://docs.docker.com/get-docker/) и [Docker Compose](https://docs.docker.com/compose/install/), убедитесь, что версии пододят **infra** [версии](#tech-stack)

### Загрузка

1. Клонируйте данный репозиторий

```bash
git clone https://github.com/NameArtem/hadoop-spark-standalone-docker.git
```

2. Запустить;

```bash
docker-compose up
```

4. Используйте Apache Spark. Примеры Jupyter [notebooks](build/workspace/) на Scala, PySpark или SparkR.;

<p align="center"><img src="docs/image/runned.jpg"></p>

5. Для завершения работы и остановки контейнеров - `ctrl+c`.

### Самостоятельная сборк

> **Note**: Только для ОС Linux.

1. Клонируйте данный репозиторий

```bash
git clone https://github.com/NameArtem/hadoop-spark-standalone-docker.git
```

2. Перейти в build;

```bash
cd build
```

3. Отредактируйте [build.yml](build/build.yml), включите те сборки, которые хотите использовать;

4. Используйте теже версии в файле [docker compose](build/docker-compose.yml);

5. Запустите сборку;

```bash
chmod +x build.sh ; ./build.sh
```

6. Запустите кластер;

```bash
docker-compose up
```

4. Используйте Apache Spark. Примеры Jupyter [notebooks](build/workspace/) на Scala, PySpark или SparkR.;

<p align="center"><img src="docs/image/runned.jpg"></p>

5. Для завершения работы и остановки контейнеров - `ctrl+c`.

## <a name="tech-stack"></a>Технические требования

- Инфраструктура кластера

| Component      | Version |
| -------------- | ------- |
| Docker Engine  | 1.13.0+ |
| Docker Compose | 1.10.0+ |

- Jupyter Kernels и языки программирования

| Spark | Hadoop | Scala   | [Scala Kernel](https://almond.sh/) | Python | [Python Kernel](https://ipython.org/) | R     | [R Kernel](https://irkernel.github.io/) |
| ----- | ------ | ------- | ---------------------------------- | ------ | ------------------------------------- | ----- | --------------------------------------- |
| 3.x   | 3.2    | 2.12.10 | 0.10.9                             | 3.7.3  | 7.19.0                                 | 3.5.2 | 1.1.1                                   |
| 2.x   | 2.7    | 2.11.12 | 0.6.0                              | 3.7.3  | 7.19.0                                 | 3.5.2 | 1.1.1                                   |

- Приложения

| Component      | Version                 | Docker Tag                                           |
| -------------- | ----------------------- | ---------------------------------------------------- |
| Apache Spark   | 2.4.0 \| 2.4.4 \| 3.0.0 | **\<spark-version>**                                 |
| JupyterLab     | 2.1.4 \| 3.0.0          | **\<jupyterlab-version>**-spark-**\<spark-version>** |
