# Use official Python image as base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app


# Set the working directory inside the container
WORKDIR /app

# Copy your project files to the container
COPY ml_apprentice.ipynb .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Define the entry point to run the script
CMD ["python", "app.py"]
