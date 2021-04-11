FROM python:3.9.4 as base

RUN pip install mlflow

EXPOSE 5000

CMD mlflow ui -h 0.0.0.0