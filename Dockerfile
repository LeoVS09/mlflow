FROM python:3.9.4 as base

RUN pip install mlflow==1.14.1

# For postgres connection
RUN pip install psycopg2-binary

WORKDIR /work

EXPOSE 5000

CMD mlflow server --host 0.0.0.0 \
    --backend-store-uri ${BACKEND_STORE_URL} \
    --default-artifact-root /work/mlruns