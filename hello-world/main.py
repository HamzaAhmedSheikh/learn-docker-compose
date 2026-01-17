from fastapi import FastAPI

app = FastAPI(title="Hello World API")


@app.get("/health")
def health_check() -> dict:
    return {"message": "Hello World!"}
