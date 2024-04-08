# Используем базовый образ Python
FROM python:3.9

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем зависимости и исходный код в рабочую директорию контейнера
COPY requirements.txt .
COPY app.py .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Указываем команду для запуска приложения внутри контейнера
CMD ["python", "app.py"]
