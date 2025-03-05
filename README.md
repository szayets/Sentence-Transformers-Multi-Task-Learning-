# Sentence Embeddings with Sentence-Transformers

## Overview

Welcome to the Sentence Embeddings with Sentence-Transformers take-home project. This task focuses on generating sentence embeddings using the sentence-transformers library while demonstrating an understanding of natural language processing (NLP) concepts and proficiency with pre-trained models.

Sentence embeddings are numerical representations of text that capture semantic meaning, making them useful for tasks such as text similarity, clustering, and classification. This project utilizes the all-MiniLM-L6-v2 model, a lightweight and efficient option ideal for quick experimentation and learning.

By completing this task, the goal is to showcase technical proficiency, problem-solving abilities, and practical experience with NLP techniques—key aspects relevant to the ML Apprentice role.

The project is packaged as a Jupyter Notebook (`ml_apprentice.ipynb`) and can be run in a Docker container with Jupyter Lab, providing an interactive and reproducible environment.

---

## Prerequisites

Before diving in, ensure you have the following installed on your system:

- **Python**: Version 3.6 or higher.
- **Docker**: Required to run the project in a containerized environment. Download and install Docker Desktop from [docker.com](https://www.docker.com/products/docker-desktop/).

---

## Project Structure

- **`ml_apprentice.ipynb`**: The Jupyter Notebook containing the code for generating sentence embeddings using `sentence-transformers`.
- **`requirements.txt`**: Lists the Python dependencies needed for the project.
- **`Dockerfile`**: Configures a Docker container to run the Jupyter Lab environment with all dependencies pre-installed.
- **`README.md`**: This file—your guide to getting started and understanding the project.

---

## Installation and Setup

Follow these step-by-step instructions to set up and run the project:

### 1. Clone or Download the Repository

If you’re using Git, clone this repository:
```bash
git clone <repository-url>
cd sentence-embeddings-sentence-transformers
```
If you don’t have Git, download the files and place them in a folder on your computer.

### 2. Install Docker
Ensure Docker Desktop is installed and running on your system.

### 3. Verify Docker is Working
Run:
```bash
docker --version
```
You should see the Docker version output.

### 4. Build the Docker Image
Navigate to the project directory and run:
```bash
docker build -t sentence-embeddings-jupyter .
```

### 5. Run the Docker Container
Launch Jupyter Lab in a container:
```bash
docker run -p 8888:8888 -v $(pwd):/app sentence-embeddings-jupyter
```

### 6. Access Jupyter Lab
Open your browser and go to:
```
http://localhost:8888
```

### 7. Open and Run the Notebook
Open `ml_apprentice.ipynb` in Jupyter Lab and execute the cells to generate sentence embeddings.

---

## Dependencies

The project relies on the following Python libraries, listed in `requirements.txt`:
```text
jupyterlab
torch
transformers
sentence_transformers
ipywidgets
```
To install these manually:
```bash
pip install -r requirements.txt
```

---


## Troubleshooting

### 1. ModuleNotFoundError: No module named 'sentence_transformers'
Fix: Install with:
```bash
pip install sentence-transformers
```

### 2. Docker Fails to Build or Run
Fix:
- Check for disk space issues.
- Ensure the Dockerfile and `requirements.txt` are correct.
- Run `docker logs <container-id>` to debug.

### 3. Jupyter Lab Doesn’t Load
Fix:
- Ensure no process is using port 8888:
```bash
netstat -aon | findstr :8888
```
- Restart the container.

---

### Summary
This Docker-based Jupyter Lab environment is optimized for fast installation and execution. It uses a lightweight Python 3.8-slim image, efficiently installs dependencies, and includes sentence-transformers and CPU-only PyTorch for machine learning tasks. The setup minimizes unnecessary installations, reduces image size, and ensures smooth execution of Jupyter Lab inside a container. Users can customize the port and authentication for secure access.


Thank you for taking the time to review this project! I appreciate your feedback and insights, and I look forward to any suggestions for further improvements.
