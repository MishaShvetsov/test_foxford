1. Создаем пользователя
CREATE ROLE foxford_dev WITH LOGIN PASSWORD 'SuperSecretPassword123';

2. Создаем БД
CREATE DATABASE foxford_project;

3. Назначаем владельца
ALTER DATABASE foxford_project OWNER TO foxford_dev;

4. Подключаемся и создаем таблицу
\c foxford_project

CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

5. Добавляем запись
INSERT INTO tasks (title) VALUES ('Настроить сервер');