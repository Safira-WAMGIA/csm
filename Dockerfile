# ./Dockerfile
FROM python:3.12-slim

RUN apt-get update && apt-get install -y git build-essential && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 5050
CMD ["python", "main.py"]  # ou uvicorn main:app se for FastAPI
