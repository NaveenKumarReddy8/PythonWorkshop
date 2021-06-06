# 1.11 Installing packages

Python has one of the largest programming community who build 3rd party packages and support community help ❤️.

That's pretty good, Now, how do we install the packages 🤔? We could use Python's package manager **PIP**.

Python's official 3rd party package repository is [Python Package Index (PyPI)](https://pypi.org/) and its index url is https://pypi.org/simple

Here's how to use PIP in shell/terminal:


To search for a package:

```shell
pip search [package name]
```

To install a package:
Install
```shell
    pip install [package name]
```

Install a specific version

```shell
    pip install [package name]==[version]
```

Install greater than a specific version

```shell
    pip install [package name]>=[verion]
```

To uninstall a package

```shell
pip uninstall [package name]
```

## Tidbits 🔔

There are modern ways of managing the dependencies using [poetry](https://python-poetry.org/), [flit](https://flit.readthedocs.io/en/latest/index.html) etc.. We will get to those soon...😊
