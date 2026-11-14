FROM python:3.12-slim
WORKDIR /app

# TODO 1: Copy requirements.txt into the image.
# TODO 2: Install Python dependencies with pip.
# TODO 3: Copy the app/ folder into /app/app/.
# TODO 4: Document the port the API listens on.
# TODO 5: Start uvicorn app.main:app on host 0.0.0.0 port 8000.


FROM python:3.12-slim

WORKDIR /app

# TODO 1: Copy requirements.txt into the image
COPY requirements.txt .

# TODO 2: Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# TODO 3: Copy the app folder
COPY app/ ./app/

# TODO 4: Document the API port
EXPOSE 8000

# TODO 5: Start the FastAPI application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]