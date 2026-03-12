from fastapi import FastAPI
from fastapi.responses import JSONResponse, HTMLResponse

app = FastAPI()

@app.get("/", response_class=HTMLResponse)
async def read_root() -> HTMLResponse:
    content=""
    with open("index.html", "r") as f:
        content = f.read()
    return HTMLResponse(content=content)

@app.get("/message", response_class=JSONResponse)
async def read_root() -> JSONResponse:
	return JSONResponse(content={"message": "Hello, FastAPI!"})

# To run: uvicorn main:app --reload
