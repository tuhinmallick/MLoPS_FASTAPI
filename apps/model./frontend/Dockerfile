FROM python:3.9-slim@sha256:59de58260fcc59e7fedf172b06dc18bb14594e3a332c5576be8ebdb7caa6a073

RUN mkdir /frontend

COPY requirements.txt /frontend

WORKDIR /frontend

RUN pip install -r requirements.txt

COPY . /frontend

EXPOSE 8501

CMD ["streamlit", "run", "streamlit_main.py"]


