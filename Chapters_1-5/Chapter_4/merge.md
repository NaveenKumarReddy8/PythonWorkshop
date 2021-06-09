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

As we already know we can pass the parameters to the function, we can
give a try on those too.. But before trying out, let’s know about the
types of Arguments we can define in the function signature. We have the
below 4 types of Arguments:

  - Positional Arguments
  - Unnamed positional Arguments / VarArgs
  - Keyword-only Arguments
  - Keyword arguments / Varkwargs

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

# 4.3 Unnamed Positional Arguments

let’s think we need to count the number of bucks I spent from the past 3
days. I could write a function as below:

``` python
def count_my_expenses_for_last_3_days(day_1, day_2, day_3):
    print(f"The total expenses for last 3 days is : {day_1 + day_2 + day_3}")
```

``` python
count_my_expenses_for_last_3_days(88, 12, 15)
```

    The total expenses for last 3 days is : 115

The day passed down and now I want to find my expenses of my last 4
days, but I am too lazy to write new function like:

``` python
def count_my_expenses_for_last_4_days(day_1, day_2, day_3, day_4):
    print(f"The total expenses for last 4 days is : {day_1 + day_2 + day_3 + day_4}")
```

![Lazy
me](https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_4/resources/lazy.jpg?raw=true)

And I much more lazier to modify the function each day. No worries, we
have Unnamed Positional arguments as our Saviour in this case.

Sometimes we might not know the number of arguments we need to send to a
function. Using Unnamed Positional Arguments we can pass any number of
arguments to the function. The function receives all the arguments
placed in the tuple.

### Using Unnamed Positional Arguments to find our expenses

``` python
def count_my_expenses(*expenses):
    # We could use sum function like sum(expenses). but for now let's go the raw way.
    total = 0
    for expense in expenses:
        total += expense
    print(f"Total expenses for last {len(expenses)} is {total}")
```

`For 3 days:`

``` python
count_my_expenses(100, 23, 4544)
```

    Total expenses for last 3 is 4667

`For 5 days:`

``` python
count_my_expenses(100, 23, 4544, 4, 13)
```

    Total expenses for last 5 is 4684

`For 8 days:`

``` python
count_my_expenses(100, 23, 4544, 4, 13, 34, 86, 123)
```

    Total expenses for last 8 is 4927

Hence we can see that for any number of days of expenses our function
`count_my_expenses` works great 🤖 🍾.

We can even pass the already present objects in a iterable to our
function, just that we need to unpack the iterable using the `*`

``` python
my_expenses = [100, 23, 4544, 4, 13, 34, 86, 123]
count_my_expenses(*my_expenses)
```

    Total expenses for last 8 is 4927

let’s check what is the datatype of the the Unnamed positional arguments
passed tp the function

``` python
def example(*args):
    print(f"The datatype of args is {type(args)}")
    print(f"The contents of the args are: {args}")

# Calling the function. 
example("abc")
```

    The datatype of args is <class 'tuple'>
    The contents of the args are: ('abc',)

Yup\! The datatype of Unnamed Positional arguments is `Tuple`, and the
objects passed as args are placed in the tuple object. 🙂

🔔 By the way, this is not our first time using Unnamed Positional
arguments. We have already used `print` function many times and it
accepts Unnamed Positional arguments to be printed.

``` python
print("Hello", "Pythonist!", "⭐️")
```

    Hello Pythonist! ⭐️

# 4.4 Keyword-only arguments

Few times being explicit is better which increases the readability of
code. If a function signature has Keyword-only arguments, then while
caling the function, we need to pass our objects by their keyword names.
[PEP-3102](https://www.python.org/dev/peps/pep-3102/) defines the
Keyword-only arguments.

Well, how to define the keyword only arguments 🤔? In the previous lesson
about Positonal Arguments we have seen that Positional-only Arguments
whose function signature is created by using `/`. Similarly for
Keyword-only Argument, we use `*` in the signature.

``` python
def keyword_only_argument_signature(*, arg1, arg2):
    ...
```

`Example:`

``` python
def greet(*,greet_word, name):
    print(f"{greet_word} {name}!")
```

Now if we want to try calling our new function `greet` as
`greet("Hello", "Pythonist♥️")`, we should be seeing a
    `TypeError`.

``` python
greet("Hello", "Pythonist ♥️")
```

    ---------------------------------------------------------------------------
    
    TypeError                                 Traceback (most recent call last)
    
    <ipython-input-1-afdd481e08df> in <module>
    ----> 1 greet("Hello", "Pythonist ♥️")
    
    
    TypeError: greet() takes 0 positional arguments but 2 were given

The only way we can call our `greet` function is by passing our both
`greet_word` and `name` values with keyword names.

``` python
greet(greet_word="Hello", name="Pythonist ♥️")
```

    Hello Pythonist ♥️!

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
