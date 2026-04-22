## Запуск проекта

1. `docker-compose up --build` Запуск проекта в докер-контейнере
2. `docker logs pyspark` - Вывод в терминал URL для Jupiter Notebook
3. Перейдите по полученному URL (Пример `http://127.0.0.1:8888/lab?token=566d...`)
4. Полностью запустить файл `star.ipynb`
5. Полностью запустить файл `clickhouse.ipynb`
6. Через DBeaver подключиться к ClickHouse (user: user, password: password, db: default, port 8123)
7. В таблицах будут записаны все итоговые отчеты