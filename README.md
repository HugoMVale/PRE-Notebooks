# Polymer Reaction Engineering Notebooks

![Python 3.10](https://img.shields.io/badge/python-3.10-blue.svg)

This GitHub repository contains Jupyter notebooks that illustrate various aspects of polymerization reactions, along with the mathematical and computational methods used to model and analyze them. These resources are suitable for both self-learning and classroom instruction.

You can learn to do cool things like the example below! 🚀

<p align="center">
  <img src="notebooks/13/animation-PLP-SEC-10-pulses.gif" width="600" alt="Random scission">
</p>

## Topics

The notebooks cover the following topics:

* [x] Population Balances
* [x] Monte Carlo Methods
* [x] Radical Polymerization
* [x] Living Polymerization
* [x] Step-Growth Polymerization
* [x] Copolymerization
* [x] Parameter Estimation
* [x] Devolatilization

## Getting Started

To open the notebooks in book format, just click [here](https://hugomvale.github.io/PRE-Notebooks).

To run the notebooks, you can use one of two methods:

* **[Google Colab](https://colab.research.google.com/)** — You can open the notebooks directly from the source code repository by selecting _File -> Open notebook -> GitHub -> URL"_, and entering the following repository name: `HugoMVale/PRE-Notebooks`. This method requires a Google account but is likely the easiest for beginners.

* **Local environment** — Alternatively, you can clone or download this repository to your local machine. This method requires a local Python (>=3.10) installation as well as the packages listed
in [`requirements.txt`](requirements.txt). Assuming you're running Windows and have `git` installed, follow these steps:

  ```sh
  git clone https://github.com/HugoMVale/PRE-Notebooks.git
  cd PRE-Notebooks
  python -m venv .venv
  .\.venv\Scripts\Activate.ps1
  pip install -r requirements.txt
  ```

## Contribution

Contributions and improvements to these notebooks are welcome. If you have any suggestions, corrections, or additional materials that could enhance the learning experience, please consider submitting a pull request.

## License

This project is provided under the very permissive [MIT License](LICENSE).

We hope these notebooks provide a valuable resource for your journey into the world of (de)polymerization reaction modeling. Happy learning!
