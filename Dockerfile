FROM python:3.10-slim

# Install MLflow
RUN pip install mlflow psycopg2-binary

# Create artifact directory
RUN mkdir -p /mlflow/artifacts

ENV MLFLOW_ARTIFACT_URI=/mlflow/artifacts

EXPOSE 5000

CMD mlflow server --backend-store-uri $MLFLOW_BACKEND_STORE_URI --default-artifact-root $MLFLOW_ARTIFACT_URI --host 0.0.0.0 --port $PORT

