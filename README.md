
# fastapi-docker-test

## FastAPI Demo

This is a simple FastAPI demo app.

### How to run

1. Install dependencies (if not already):
	```bash
	pip install fastapi[standard] uvicorn
	```
2. Start the server:
	```bash
	uvicorn main:app --reload
	```
3. Open your browser at [http://127.0.0.1:8000](http://127.0.0.1:8000)

You should see:
```json
{"message": "Hello, FastAPI!"}
```
