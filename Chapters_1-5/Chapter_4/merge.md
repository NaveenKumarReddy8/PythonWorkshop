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
would see a `TypeError` exception raised 👻

``` python
try:
    add(1)
except TypeError as exc:
    print(f"😈 Ouch! we are into TypeError: {exc}")
```

    😈 Ouch! we are into TypeError: add() missing 1 required positional argument: 'operand_2'

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
name, Boom 💣, we get a `TypeError` exception.

``` python
try:
    greet(greet_word="Hello", name_of_the_user="Pythonist")
except TypeError as exc:
    print(f"We fell into TypeError: {exc}")
```

    We fell into TypeError: greet() got some positional-only arguments passed as keyword arguments: 'greet_word'

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

# 4.4 Keyword-only arguments
