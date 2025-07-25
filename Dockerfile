# Use Red Hat's UBI Python 3.11 image (no auth needed)
FROM registry.access.redhat.com/ubi8/python-311

# Set working directory
WORKDIR /app

# Copy your app files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Expose the Flask port
EXPOSE 8080
CMD ["python", "app.py"]

