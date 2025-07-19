# Use an official slim Python image
FROM python:3.11-slim-bullseye

# Install system dependencies (FFmpeg, etc.)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ffmpeg \
    git \
    curl \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy your bot code
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip setuptools wheel && \
    pip install -r requirements.txt

# Launch your bot
CMD ["python3", "main.py"]
