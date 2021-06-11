# 4.7 TLDR regarding function arguments 💡

Till now we have seen all the 4 types of arguments that we can use in
functions.

  - Positional Arguments
  - Unnamed positional Arguments / VarArgs
  - Keyword-only Arguments
  - Keyword arguments / Varkwargs

Let’s give it a shot with all the above arguments in a function 😎

The complete syntax of a function eliding varargs and keyword arguments
defined in [PEP-570](https://www.python.org/dev/peps/pep-0570/) would be
as:

``` python
def name(positional_only_parameters, /, positional_or_keyword_parameters, *, keyword_only_parameters):
```

`Example:`

Let’s build a complete function with all the types of arguments
😎.

``` python
def function(positional_only, /, position="🐍", *varargs, keyword_only, **keyword):
    print(f"{positional_only=}")
    print(f"{position=}")
    print(f"{varargs=}")
    print(f"{keyword_only=}")
    print(f"{keyword=}")

    # datatype of varargs and keyword.
    print(f"The datatype of varargs is {type(varargs)}")
    print(f"The datatype of keyword is {type(keyword)}")
```

Let’s call our beautiful function ♥️

``` python
function(
    "Python",
    "♥️",
    "Python",
    "is",
    "Cool",
    keyword_only="😋",
    key1="value1",
    key2="value2",
)
```

    positional_only='Python'
    position='♥️'
    varargs=('Python', 'is', 'Cool')
    keyword_only='😋'
    keyword={'key1': 'value1', 'key2': 'value2'}
    The datatype of varargs is <class 'tuple'>
    The datatype of keyword is <class 'dict'>

The above calling of function can also be written as:

``` python
function(
    "Python",
    "♥️",
    *["Python", "is", "Cool"],
    keyword_only="😋",
    **{"key1": "value1", "key2": "value2"},
)  # Unpacking.
```

    positional_only='Python'
    position='♥️'
    varargs=('Python', 'is', 'Cool')
    keyword_only='😋'
    keyword={'key1': 'value1', 'key2': 'value2'}
    The datatype of varargs is <class 'tuple'>
    The datatype of keyword is <class 'dict'>

Let’s make `position` be it’s default value.

``` python
function(
    "Python",
    *["Python", "is", "Cool"],
    keyword_only="😋",
    **{"key1": "value1", "key2": "value2"},
)
```

    positional_only='Python'
    position='Python'
    varargs=('is', 'Cool')
    keyword_only='😋'
    keyword={'key1': 'value1', 'key2': 'value2'}
    The datatype of varargs is <class 'tuple'>
    The datatype of keyword is <class 'dict'>

Ouch, we see that `position` has taken the `Python` as it’s value which
we intended to be one of the value of our `varargs`. The solution for
this is to pass our `*["Python", "is", "Cool"]` as keyword argument like
`varargs=["Python", "is", "Cool"]`. **NOTE** that there won’t be
unpacking symbol `*` here.

``` python
function(
    "Python",
    varargs=["Python", "is", "Cool"],
    keyword_only="😋",
    **{"key1": "value1", "key2": "value2"},
)
```

    positional_only='Python'
    position='🐍'
    varargs=()
    keyword_only='😋'
    keyword={'varargs': ['Python', 'is', 'Cool'], 'key1': 'value1', 'key2': 'value2'}
    The datatype of varargs is <class 'tuple'>
    The datatype of keyword is <class 'dict'>

We can even notice that in the above example, we have passed
`varargs=["Python", "is", "Cool"]`, but in the output the datatype of
varargs is printed as tuple. Not just in above example, in all the above
examples, we can see that `varargs` is `tuple` and `keyword` is
`dictionary`.

💡 Unnamed Positional arguments datatype is always tuple and keyword
argument datatype is always dictionary .
