# Use Python 3.10 (compatible with TensorFlow 2.10)
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the web port
EXPOSE 10000

# Command to run your Flask app
CMD ["gunicorn", "main:app", "--bind", "0.0.0.0:10000"]
