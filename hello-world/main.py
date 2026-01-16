from fastapi import FastAPI

app = FastAPI()


# Create a simple endpoint
@app.get("/")
def home():
    return {"message": "Hello, World World!"}
