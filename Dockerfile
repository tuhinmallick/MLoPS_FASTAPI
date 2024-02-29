FROM python:3.9-slim@sha256:51c781cd11dd1f2a95e2bef833a5920042743fa502d66c9e12c1a841d983f9a7

RUN pip install mlflow

EXPOSE 5000

CMD ["mlflow", "ui", "--backend-store-uri", "sqlite:///db/backend.db", "--host", "0.0.0.0"]


