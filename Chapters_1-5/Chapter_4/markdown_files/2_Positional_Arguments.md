# 4.2 Positional Arguments

``` python
def add(operand_1, operand_2):
    print(f"The sum of {operand_1} and {operand_2} is {operand_1 + operand_2}")
```

Yipeee\! we have created a new function called add which is expected to
add two integers values, Just kidding 😜, thanks to the dynamic typing of
the Python, we can even add float values, concat strings and many more
using our `add` function, but for now, let’s stick with the addition of
integers 😎

``` python
add(1, 3)
```

    The sum of 1 and 3 is 4

Yup, we did got our result ⭐️. what if I forget passing a value? we
would see a `TypeError` exception raised
    👻

``` python
add(1)
```

    ---------------------------------------------------------------------------
    
    TypeError                                 Traceback (most recent call last)
    
    <ipython-input-1-2558a051bacf> in <module>
    ----> 1 add(1)
    
    
    TypeError: add() missing 1 required positional argument: 'operand_2'

The name **Positional arguments** itself says the arguments should be
according to the function signature. But here’s a deal, we can change
the order of arguments being passed, just that we should pass them with
the respective keyword 🙂

`Example`

``` python
def difference(a, b):
    print(f"The difference of {b} from {a} is {a - b}")
```

``` python
difference(5, 8)
```

    The difference of 8 from 5 is -3

``` python
difference(b=8, a=5)  # Positions are swapped, but passing the objects as keywords.
```

    The difference of 8 from 5 is -3

We can see in the above example that even if the positions are changed,
but as we have are passing them through keywords, the result remains the
same. ⭐️

## Position only arguments

We do have the power ✊ to make the user call the function’s position
only arguments the way we want, Thanks to
[PEP-570](https://www.python.org/dev/peps/pep-0570/) for Python \>= 3.8

The syntax defined by the PEP-570 regarding Position only arguments is
as:

``` python
def name(positional_only_parameters, /, positional_or_keyword_parameters, *, keyword_only_parameters):
```

``` python
def greet(greet_word, /, name_of_the_user):
    print(f"{greet_word} {name_of_the_user}!")
```

In the above example, we do have two arguments `greet_word` and
`name_of_the_user` we used **`/`** to say that **Hey Python\! Consider
`greet_word` as Positional only Argument**

When we try to call our function `greet` with greet\_word as keyword
name, Boom 💣, we get a `TypeError`
    exception.

``` python
greet(greet_word="Hello", name_of_the_user="Pythonist")
```

    ---------------------------------------------------------------------------
    
    TypeError                                 Traceback (most recent call last)
    
    <ipython-input-1-7bd2eedf0fa4> in <module>
    ----> 1 greet(greet_word="Hello", name_of_the_user="Pythonist")
    
    
    TypeError: greet() got some positional-only arguments passed as keyword arguments: 'greet_word'

Try to call our `greet` with `greet_word` as positional only argument,
meaning not passing it by keyword name. We can hope that there won’t be
any exception raised. 😁

``` python
# Calling greet function with name_of_the_user as Positional keyword.
greet("Hello", "Pythonist")

# Calling greet function with name_of_the_user with keyword name.
greet("Hello", name_of_the_user="Pythoneer😍")
```

    Hello Pythonist!
    Hello Pythoneer😍!
