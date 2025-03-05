# Use a lightweight Python image as the base
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies (without caching for a smaller image)
RUN pip install --upgrade pip && pip install -r requirements.txt --no-cache-dir

# Copy the project notebook into the container
COPY ml_apprentice.ipynb .

# Expose port 8888 for Jupyter Lab access
EXPOSE 8888

# Command to run Jupyter Lab when the container starts
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser", "--NotebookApp.token=''"]

