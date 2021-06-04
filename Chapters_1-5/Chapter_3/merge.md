# 3.1 Comments and Docstrings

Comments are used to explain the code. The interpreter doesn't execute the comments. There are 3 types of comments in Python:
* Single Line
* In-Line
* Multi Line

## Single Line

Single line comments are written in a single line. Single line comments start with `#`

```Python
# Here's a single line comment
```

## In-Line

In-Line comments are written beside the code.

```Python
print("Hello")  # Here's a In-Line comment
```

## Multi Line

Sometimes we need to write a huge explanation using comments, in those cases we do use multi-line comments. multiline comments are enclosed in `""" """` or `''' '''`


```Python
"""
Here's a 
multiline comment.
"""
```

## Docstrings

Docstrings are specific type of comments that are stored as a attribute to the module, class, method or function.

Docstrings are written similar to the multi-line comments using `""" """` or `''' '''`, the only difference would be they are written exactly at the start(first statement) of the module, class, method or function.

Docstrings can be programatically acccessed using the `__doc__` method or through the built-in function `help`. Let's give a try 😎.


```python
def double_the_value(value: int):
    """Doubles the integer value passed to the function and returns it."""
    return value * 2
```

### Using help

`help` function provides the docstrings as well as the information about the module, class, method or function.


```python
help(double_the_value)
```

    Help on function double_the_value in module __main__:
    
    double_the_value(value: int)
        Doubles the integer value passed to the function and returns it.
    


### Using `__doc__`


```python
print(double_the_value.__doc__)
```

    Doubles the integer value passed to the function and returns it.


Can we use the single line comments instead of multi-line docstrings 🤔? Let's try this as well.


```python
def test_single_line_comment_as_docstring():
    # This is a single-line comment
    pass
```


```python
print(test_single_line_comment_as_docstring.__doc__)
```

    None


We can see that `None` is printed, which explains that we can't use single-line comments as docstrings 🙂

## Docstrings for documentation of code.

[PEP-257](https://www.python.org/dev/peps/pep-0257/) defines two types of docstrings. 
* One-Line docstring
* Multi-Line docstring

### [One-Line docstring](https://www.python.org/dev/peps/pep-0257/#one-line-docstrings)

One-line docstrings are suited for short and simple Modules, classes, methods or functions.


```python
def one_line_docstring():
    """This is a one-line docstring"""
    pass
```

### [Multi-Line docstring](https://www.python.org/dev/peps/pep-0257/#multi-line-docstrings)

Multi-line docstrings are suited for long, complex Modules, classes, methods or functions


```python
def multi_line_docstring(arg1: int, arg2: str) -> None:
    """
    This is a multi-line docstring.
    
    Arguments:
      arg1 (int): Argument 1 is an integer.
      arg2 (str): Argument 2 is a string.
    """
    pass
```

## Styles of docstrings

There are multiple styles of writing docstrings such as [reStructuredText](https://docutils.sourceforge.io/rst.html), [Google Python Style Guide](https://google.github.io/styleguide/pyguide.html#38-comments-and-docstrings), [Numpy style](https://google.github.io/styleguide/pyguide.html#38-comments-and-docstrings).

We could use any of the above docstrings style as long as we stay consistent. 


[Sphinx](https://www.sphinx-doc.org/en/master/) is a tool that generated beautiful HTML based documentation 📜 from the docstrings we provide in our code. reStructuredText is the default style, for other styles we could use plugins like [Napoleon](https://www.sphinx-doc.org/en/master/usage/extensions/napoleon.html).

Sphinx also provides various templates we can choose from to create the HTML documentation out of it. 😎♥️

### A meme on Documentation 😂

![Documentation](https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_3/resources/documentation.png?raw=true)

It's always good and professional to have our code documented 🙂.
