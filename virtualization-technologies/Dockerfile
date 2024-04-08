# Этап 1: Установка зависимостей и создание виртуального окружения
FROM python:3.9 as builder

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы зависимостей
COPY requirements.txt .

# Устанавливаем зависимости в виртуальное окружение
RUN python -m venv /venv && \
    /venv/bin/pip install --no-cache-dir -r requirements.txt

# Этап 2: Копирование виртуального окружения и приложения, установка точки входа
FROM python:3.9-slim

# Копируем виртуальное окружение с зависимостями
COPY --from=builder /venv /venv

# Устанавливаем переменную окружения PATH
ENV PATH="/venv/bin:$PATH"

# Копируем исходный код приложения
COPY src/app.py /app/app.py

# Устанавливаем рабочую директорию
WORKDIR /app

# Указываем точку входа
CMD ["python", "app.py"]
