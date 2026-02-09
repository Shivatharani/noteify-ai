FROM python:3.10-slim

WORKDIR /app

# System dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Copy backend files
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Download Vosk model at build time
RUN mkdir -p models && \
    cd models && \
    curl -L -o vosk-model.zip https://alphacephei.com/vosk/models/vosk-model-en-us-0.22.zip && \
    unzip vosk-model.zip && \
    rm vosk-model.zip

# Expose FastAPI port
EXPOSE 8000

# Start FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
