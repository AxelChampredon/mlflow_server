import os
import mlflow

if __name__ == "__main__":
    mlflow.server.run(
        host="0.0.0.0",
        port=5000,
        backend_store_uri=os.environ["BACKEND_STORE_URI"],
        default_artifact_root=os.environ["ARTIFACT_ROOT"]
    )

