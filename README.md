# Sentence Embeddings with Sentence-Transformers

This project demonstrates how to use the `sentence-transformers` library to generate embeddings for sentences using a pre-trained model. Sentence embeddings are numerical representations of text that capture semantic meaning, useful for tasks like text similarity, clustering, or classification.

## Prerequisites

- **Python**: Version 3.6 or higher (tested with 3.11.7)
- **Libraries**: 
  - `sentence-transformers` (install via pip)

### Installation

To run this code, you need to install the `sentence-transformers` library. Use the following command:

```bash
pip install sentence-transformers
If you encounter a ModuleNotFoundError: No module named 'sentence_transformers', it means the library is not installed in your environment. Run the command above to resolve this.
```
#### Code Overview
The code performs the following steps:

1 Imports the SentenceTransformer class from the sentence-transformers library.
2 Loads a pre-trained model (all-MiniLM-L6-v2), which is lightweight and efficient for generating sentence embeddings.
3 Defines a list of example sentences.
4 Encodes the sentences into embeddings (numerical vectors).
5 Prints each sentence along with the first five values of its embedding for demonstration.

### File
ml_apprentice.ipynb: The Jupyter Notebook containing the code.


### Usage
Open the notebook.ipynb file in Jupyter Notebook or JupyterLab.
Ensure the sentence-transformers library is installed (see Installation section).
Run the cells in sequence:
The first cell loads the model, encodes the sentences, and prints the embeddings.
The second cell outputs the sentences list (if executed standalone).


### Troubleshooting
Error: ModuleNotFoundError: No module named 'sentence_transformers'
Fix: Install the library with pip install sentence-transformers.
Environment Issues: If using a virtual environment, ensure it’s activated before running the code.

### Notes
The all-MiniLM-L6-v2 model is a small, efficient transformer model. Other models are available in the sentence-transformers library; see the official documentation for options.
Embeddings are high-dimensional vectors (384 dimensions for this model). The code truncates output to the first 5 values for readability.
Embeddings are high-dimensional vectors (384 dimensions for this model). The code truncates output to the first 5 values for readability.
