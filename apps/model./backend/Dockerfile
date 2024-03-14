FROM python:3.9-slim@sha256:59de58260fcc59e7fedf172b06dc18bb14594e3a332c5576be8ebdb7caa6a073

RUN mkdir /backend
RUN mkdir /ml


COPY ./backend/requirements.txt /backend/requirements.txt
RUN pip install -r backend/requirements.txt

COPY ./backend /backend
COPY ./ml /ml

EXPOSE 8000

CMD ["uvicorn", "backend.main:app", "--host", "0.0.0.0", "--port", "8000"]


