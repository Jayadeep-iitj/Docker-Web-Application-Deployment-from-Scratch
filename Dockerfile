# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code and requirements into the container
COPY app.py .
COPY requirements.txt .

# Install the application's dependencies
RUN pip install -r requirements.txt

# Expose the port the application will run on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
