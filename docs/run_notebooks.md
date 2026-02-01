# Run the Notebooks

To run the notebooks, you can use one of two methods:

## Google Colab

This method requires a Google account but is the easiest option for beginners. Simply click the 🚀 icon at the top of the notebook you want to open.  

Alternatively, you can open the notebooks manually:  

1. Go to [Google Colab](https://colab.research.google.com/).  
2. Select **File → Open notebook → GitHub → URL**.  
3. Enter the following repository name: `HugoMVale/PRE-Notebooks`.  

## Local environment

Alternatively, you can clone or download this repository to your local machine. This method requires a local Python (>=3.10) installation as well as the packages listed in [`requirements.txt`](../requirements.txt). Assuming you're running Windows and have [git] installed, follow these steps:

```bash
git clone https://github.com/HugoMVale/PRE-Notebooks.git
cd PRE-Notebooks
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
```

[git]: https://git-scm.com/