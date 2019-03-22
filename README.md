# Jupyter Formula Chapters

Tooling and examples for using Jupyter Notebooks to write chapters that explain mathematical and engineering calculations.

Jupyter Notebooks have become a standard way to write code to solve a problem. Well-written notebooks can be used to
teach a procedure or concept to others. Learners can see the code and intermediate values.

However regular Jupyter Notebooks are still regular Python programs, and might require a lot of boilerplate code.

This repo provides examples for how to write a procedure in Jupyter, but emit well-formatted text that itself looks
like a chapter from a book. This way a procedure can be codified so its mathematical process is clearly explained, even
letting the user input their own values, while hiding the boilerplate Python code. This way the focus can be on the
underlying principles. Of course the underlying Python code is always available for inspection and modification.

See screenshots of a notebook and example PDF in [example-images/].

# Installation

This assumes a Mac or Linux environment.

Download or clone this repo, then run the `setup.sh` script:

```bash
git clone https://github.com/alugowski/jupyter-forchaps.git
cd jupyter-forchaps/
./setup.sh
```

Open Jupyter:
```bash
jupyter notebook notebooks/
```

### PDFs
Configure Printivew plugin:
In the Jupyter page click on the `Nbextensions` tab, then find `Printview`.

Printview plugin options:
```
--to pdf --template printviewlatex.tplx
```

Creating PDFs requires a Latex installation on your system. See bottom of
[https://nbconvert.readthedocs.io/en/latest/install.html]

### What does setup.sh do?

* set up a Python virtual environment to install everything in
* installs Jupyter and a few dependencies
* installs Jupyter extensions that allow hiding code cells and easily export PDFs

# How to use

*NOTEBOOKS MUST BE MARKED AS TRUSTED*

To view available extensions see "nbextensions config" from the Edit menu of a notebook page.

## TRUSTED NOTEBOOKS

Nearly all features in this repo depend on extensions that require a notebook to be trusted.

When opening a notebook for the first time, click the `Not Trusted` icon in the top right, then click `Trust` in the popup.


## Hide / Show code
Click the eye icon to hide input of code cells.

# PDF output

For best results use the print toolbar button that the `Printview` plugin provides.

The standard `Download As` option will not respect cell code hiding nor Latex output.

To manually create a PDF out of a notebook:

```bash
jupyter nbconvert --template=printviewlatex --to=pdf mynotebook.ipynb
```

# Further reading

* Advanced [http://blog.juliusschulz.de/blog/ultimate-ipython-notebook]
* Some simple Latex extensions [https://michaelgoerz.net/notes/custom-template-for-converting-jupyter-notebooks-to-latex.html]
* Customizing PDF output [https://nbconvert.readthedocs.io/en/latest/customizing.html]