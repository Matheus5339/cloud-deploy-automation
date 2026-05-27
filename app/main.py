from fastapi import FastAPI
import time
import os

app = FastAPI(title="Cloud Deploy Automation")

START_TIME = time.time()

@app.get("/")
def root():
    return {
        "service": "cloud-deploy-automation",
        "status": "running"
    }

@app.get("/health")
def health():
    return {
        "status": "healthy",
        "uptime_seconds": round(time.time() - START_TIME, 2),
        "environment": os.getenv("ENVIRONMENT", "development")
    }