# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install system dependencies (for OpenCV)
RUN apt-get update && apt-get install -y libgl1

# Copy all files
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 10000

# Run the app
CMD ["gunicorn", "main:app"]
