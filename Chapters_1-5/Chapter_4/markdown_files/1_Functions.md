# 4.1 Functions

The purpose of Functions is grouping the code into organised, readable
and reusable format. By using the functions, code redundancy can be
reduced.

A soft rule of functions is that, an function shoud be **Small** and
**Do One Thing** mentioned in Clean Code by Robert C. Martin.

Functions are nothing new to us. We have already used `print` function
in our previous lessons, just that it is a built-in function. There are
other built-in functions like `help`, `len`, `sorted`, `map`, `filter`,
`reduce` etc…

In Python functions are created by using the keyword `def` followed by
the function name and if required parameters.

``` python
def function_name(parameters):
    # statements...
    ...
    ...
    ...
```

Here `function_name` is the identifier for the function through which it
can be called. `parameters` are optional in the function signature. A
function may have any number of parameters to be bound to the function.
As we already know we do use Indendation to group the statments, all the
statements belonging to the function are indended in the function.

By convention function names should be in camelcase 🐪 and be a verb.

Let’s get started with a basic function

## Simple function

``` python
def greet():
    print("Hello Pythoneer! 😎")
```

``` python
greet()  # Calling the function
```

    Hello Pythoneer! 😎

This is a pretty basic function which just prints to the console saying
“Hello Pythoneer\!😎”, as we are not returning anything using the
`return` keyword, our function `greet` implicitly returns `None` object.

We could return objects from the function using the keyword `return`

``` python
def greet():
    return "Hello Pythoneer! 😎"
```

``` python
greet_word = greet()
print(greet_word)
```

    Hello Pythoneer! 😎

## Functions - First Class Objecs

In Python 🐍, Functions are First class objects. There are a few
criterias defined for an object to be First class object like functions
can be passed as argument, assigned to a variable, return a function.

### Passing the function to a different function

``` python
def first_function():
    print("One Pint of 🍺")
```

``` python
def second_function(func):
    func()
    print("Two Pints of beer 🍺🍺")
```

``` python
second_function(first_function)
```

    One Pint of 🍺
    Two Pints of beer 🍺🍺

Yippeee\! We have successfully passed our `first_function` to the
`second_function` where `first_function` is being called inside the
`second_function`

### Assigning the function to a variable

``` python
# note that we are not calling the function, we are just assigning,
# if we call the function, the returned value would be assigned to our variable.
i_am_a_variable = first_function
```

``` python
i_am_a_variable()
```

    One Pint of 🍺

### Returning a function

``` python
def lets_return_a_function():
    return first_function
```

``` python
obj = lets_return_a_function()
print(f"obj is {obj}")
print(f"obj name is {obj.__name__}")
print(f"Is obj callable? {callable(obj)}")
```

    obj is <function first_function at 0x7fcae8b7a280>
    obj name is first_function
    Is obj callable? True

Cheers again 🍻\! We accomplished mission of returning the function. In
the above example, we are printing the the `obj` itself which provides
the `__str__` representation of the obj, next we are printing the name
of the `obj` which is the function name itself, and finally we are
checking if our `obj` is callable, if an object is callable, then
`callable` function returns `True` else `False`

### Deletion of function object

As we already know that everything in Python is an object, even function
as well is an object. We can even delete our function using the `del`
keyword.

``` python
del first_function
first_function()
```

    ---------------------------------------------------------------------------
    
    NameError                                 Traceback (most recent call last)
    
    <ipython-input-1-6845dce5e1f1> in <module>
          1 del first_function
    ----> 2 first_function()
    
    
    NameError: name 'first_function' is not defined

As we deleted the `first_function`, if we try to call that function, we
do get to see `NameError` saying `first_function` is not defined.

## Types of Arguments

As we already know we can pass the parameters to the function, we can
give a try on those too.. But before trying out, let’s know about the
types of Arguments we can define in the function signature. We have the
below 4 types of Arguments:

  - Positional Arguments
  - Unnamed positional Arguments / VarArgs
  - Keyword-only Arguments
  - Keyword arguments / Varkwargs
