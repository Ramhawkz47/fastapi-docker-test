
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
### Dockerization

1. Build the image
	```bash
	docker build -t fastapi-docker-test
	```

2. Run the image
	```bash
	docker run -d -p 8000:8000 --name fastapi-test fastapi-docker-test
	```

3. Stop the image
	```bash
	docker stop fastapi-test
	```

4. To Remove the image
	```bash
	docker rm -f fastapi-test
	```