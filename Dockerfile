FROM python:3.9-slim@sha256:59de58260fcc59e7fedf172b06dc18bb14594e3a332c5576be8ebdb7caa6a073

RUN pip install mlflow

EXPOSE 5000

CMD ["mlflow", "ui", "--backend-store-uri", "sqlite:///db/backend.db", "--host", "0.0.0.0"]


