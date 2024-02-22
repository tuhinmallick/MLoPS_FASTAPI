FROM python:3.9-slim@sha256:51c781cd11dd1f2a95e2bef833a5920042743fa502d66c9e12c1a841d983f9a7

RUN mkdir /backend
RUN mkdir /ml


COPY ./backend/requirements.txt /backend/requirements.txt
RUN pip install -r backend/requirements.txt

COPY ./backend /backend
COPY ./ml /ml

EXPOSE 8000

CMD ["uvicorn", "backend.main:app", "--host", "0.0.0.0", "--port", "8000"]


