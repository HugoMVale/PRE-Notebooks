# (De)Polymerization Process Modeling

![Python 3.10](https://img.shields.io/badge/python-3.10-blue.svg)

This GitHub repository contains Jupyter notebooks that illustrate various aspects of polymerization reactions,
along with the mathematical and computational methods used to model and analyze them.
These resources are suitable for both self-learning and classroom instruction.

You can learn to do cool things like the example below! 🚀

<p align="center">
  <img src="notebooks/animation_PLP-SEC-10-pulses.gif" width="600" alt="Randsom scission">
</p>

## Topics

The notebooks cover the following topics:

1. [Population Balances for Polymer Systems](https://nbviewer.org/github/HugoMVale/De-Polymerization-Process-Modeling/blob/main/notebooks/1_population_balances.ipynb)
1. [Monte Carlo Model of An + Bm Polycondensation](https://nbviewer.org/github/HugoMVale/De-Polymerization-Process-Modeling/blob/main/notebooks/2_monte_carlo_polycondensation.ipynb)
1. [Living Polymerization – Chain Length Distribution](https://nbviewer.org/github/HugoMVale/De-Polymerization-Process-Modeling/blob/main/notebooks/3_living_polymerization_distribution.ipynb)
1. [Living Polymerization – CSTR Operation](https://nbviewer.org/github/HugoMVale/De-Polymerization-Process-Modeling/blob/main/notebooks/4_living_polymerization_cstr.ipynb)
1. [Naive Radical Polymerization Model](https://nbviewer.org/github/HugoMVale/De-Polymerization-Process-Modeling/blob/main/notebooks/5_radical_polymerization.ipynb)
1. [Pulsed-Laser Polymerization](https://nbviewer.org/github/HugoMVale/De-Polymerization-Process-Modeling/blob/main/notebooks/6_pulsed_laser_polymerization.ipynb)
1. [Radical Polymerization – Semibatch Operation](https://nbviewer.org/github/HugoMVale/De-Polymerization-Process-Modeling/blob/main/notebooks/7_radical_polymerization_semibatch.ipynb)

## Getting Started

To run the tutorials, you can use one of three methods:

* **[Google Colab](https://colab.research.google.com/)** — You can open the notebooks directly from the source code repository by selecting _File -> Open notebook -> GitHub -> URL"_, and entering the following repository name: `HugoMVale/De-Polymerization-Process-Modeling`. This method requires a Google account but is likely the easiest for beginners.

* **[Binder](https://mybinder.org/v2/gh/HugoMVale/De-Polymerization-Process-Modeling/HEAD?labpath=notebooks)** — Binder also allows you to open the notebooks directly from the repository. However, you will need to _wait_ for the container to be built. While suitable for beginners, this method requires a bit more patience, and the build process can occasionally fail, requiring a relaunch.

* **Local environment** — Alternatively, you can clone or download this repository to your local machine. This method requires a local Python (>=3.10) installation as well as the packages listed
in [`requirements.txt`](requirements.txt). Assuming you're running Windows and have `git` installed, follow these steps:

  ```sh
  git clone https://github.com/HugoMVale/De-Polymerization-Process-Modeling.git
  cd De-Polymerization-Process-Modeling
  python -m venv .venv
  .\.venv\Scripts\Activate.ps1
  pip install -r requirements.txt
  ```

## Contribution

Contributions and improvements to these notebooks are welcome. If you have any suggestions,
corrections, or additional materials that could enhance the learning experience,
please consider submitting a pull request.

## License

This project is provided under the very permissive [MIT License](LICENSE).

We hope these lectures and materials provide a valuable resource for your journey into the
world of (de)polymerization reaction modeling. Happy learning!
