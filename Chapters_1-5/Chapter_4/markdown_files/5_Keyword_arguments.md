# 4.5 Keyword arguments

The Keyword Arguments name suggests that they are called through names
when calling the function.

As we saw Unnamed Positional arguments already, Keyword arguments are
similar, they can be passed any number of objects, the only difference
would be they needed to be passed with keyword names. To define the
keyword arguments in a function signature, we need to prefix `**` for
the argument.

``` python
def example_keyword_arguments(**kwargs):
    print(kwargs)
```

``` python
example_keyword_arguments(key1="value1",  key2="value2")
```

    {'key1': 'value1', 'key2': 'value2'}

We can even pass a dictionary as well 😎, just that we need to pass the
dictionary with unpacking them as `**`

``` python
my_dictionary = {"key1": "value1", "key2": "value2"}
example_keyword_arguments(**my_dictionary)
```

    {'key1': 'value1', 'key2': 'value2'}

If we try to pass objects as positional parameters, we would be seeing
our friend `TypeError` being raised
    👻

``` python
example_keyword_arguments("Hello")
```

    ---------------------------------------------------------------------------
    
    TypeError                                 Traceback (most recent call last)
    
    <ipython-input-1-16d74cce31c4> in <module>
    ----> 1 example_keyword_arguments("Hello")
    
    
    TypeError: example_keyword_arguments() takes 0 positional arguments but 1 was given
