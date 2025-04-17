# Use official Python base image
FROM python:3.10-slim
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
# Set working directory
WORKDIR /app
# Install dependencies
COPY requirements.txt .
# Upgrade pip library
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
# Copy the application code
COPY . .
# Expose the Flask port
EXPOSE 5000
# Run the Flask app
CMD ["python", "app.py"]
