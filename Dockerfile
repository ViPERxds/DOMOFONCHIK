FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p app/core && \
    touch app/__init__.py app/core/__init__.py

RUN chmod +x entrypoint.sh

RUN useradd -m appuser && chown -R appuser:appuser /app
USER appuser

ENTRYPOINT ["./entrypoint.sh"] 