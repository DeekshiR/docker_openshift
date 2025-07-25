# Use the official Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code into container
COPY app.py .

# Expose port
EXPOSE 5000

# Start the app
CMD ["python", "app.py"]
