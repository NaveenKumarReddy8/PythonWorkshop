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
def greet(*, greet_word, name):
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
example_keyword_arguments(key1="value1", key2="value2")
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

# 4.6 Default Arguments

Default arguments are the ones when calling the function, no object is
given in its place, its default value would be considered 🔔.

Default arguments are assigned in the function signature as

``` python
def func(arg=<obj>):
```

Let’s get through an example

``` python
def greet(greet_word="Hello", name="Pythonist!"):
    print(f"{greet_word} {name}!")
```

``` python
greet("Hey")
```

    Hey Pythonist!!

We see that the output for the above example is `Hey Pythonist!`, we
have passed just `Hey` for `greet_word` argument, as we have passed
object for `greet_word`, it took “Hey” as its value, but coming to
`name` argument, we haven’t passed any value to it, so it took default
object for `name` as `Pythonist!`

## Note on default arguments with respect to mutable objects

In the previous example, we have made default argument values to be
string objects, and we already know that string objects are immutable
objects and it works really fine as we expected.

But what would be result if we use mutable objects like lists,
dictionary 🤔?

``` python
def test_mutable_objects_as_default_argument(my_list=[]):
    my_list.append("🍰")
    print(my_list)
```

``` python
test_mutable_objects_as_default_argument()  # Calling the function for the first time.
test_mutable_objects_as_default_argument()  # Calling the function for the second time.
```

    ['🍰']
    ['🍰', '🍰']

Ouch, as we are not passing any argument during calling our
`test_mutable_objects_as_default_argument` function, both the times we
expected the result should be the same. But, we do see that during
second time calling of the function, there is one extra 🍰 present in the
output.

I would be happy for getting an extra cake in my plate 😋, but not in the
above output. Well, the problem is that, `my_list` in the
`test_mutable_objects_as_default_argument` is being stored as the
function attribute and being persisted and mutated everytime function is
called.

We could see the default values of our function using the `__defaults__`
method.

``` python
test_mutable_objects_as_default_argument.__defaults__
```

    (['🍰', '🍰'],)

We see there are cake objects being stored in the defaults of the
function, No worries, we do have a fix for that.

`Solution:` Use `None` object as default argument.

``` python
def test_again_as_default_argument_using_none(my_list=None):
    if my_list is None:
        my_list = []
    my_list.append("🍰")
    print(my_list)
```

``` python
test_again_as_default_argument_using_none()  # Calling the function for the first time.
test_again_as_default_argument_using_none()  # Calling the function for the second time.
```

    ['🍰']
    ['🍰']

Hurray 🍾\! We learned how to deal with default arguments for mutable
objects.

If we pass a list containing an objects, our cake 🍰 would be appended
and printed.

``` python
test_again_as_default_argument_using_none(["🍹"])
```

    ['🍹', '🍰']

## Tidbits 💡

We can’t assign default arguments to Unnamed positional arguments
(VarArgs) and Keyword arguments as there are optional in first place
with default values as empty tuple `()` for Unnamed positional arguments
and empty dictionary `{}` for Keyword arguments. If we try assigning
default argument to Unnamed positional arguments r Keyword arguments, we
would see `SyntaxError` spawned 👻.

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

# 4.8 Lambda Functions

Lambda functions are inline functions which have only 1 statement. They
are created by using the keyword `lambda` They do not have any name, so
they are also known as Anonymous functions. Although they don’t have a
name, they can be bound to a variable.

A simple lambda function to greets us 👋:

``` python
greet = lambda: "Hello Pythonist!"
```

``` python
print(greet())
```

    Hello Pythonist!

The above lambda function can be rewritten as a regular function as:

``` python
def greet():
    return "Hello Pythonist!"
```

``` python
print(greet())
```

    Hello Pythonist!

Conceptually, lambda functions are similar to regular functions which
are defined using `def`, just that lambda function accepts only 1
statement.

Let’s try calling lambda function without assigning the function to any
variable.

``` python
print((lambda: "Hello Pythonist! ♥️")())
```

    Hello Pythonist! ♥️

In the above example, we are creating the lambda expression enclosed in
paranthesis and calling the function by using `()` at the end. As there
is no name for the lambda function we just called, this is the reason
why Lambda expressions/functions are also called as Anonymous functions.

We can pass parameters as well to the lambda function

``` python
add = lambda a, b: a + b
print(add(3, 5))
```

``` 
8
```

Till now, everything about `lambda functions` and `regular functions` do
look the same, Is there any differnce? Yup, here it is, Lambda functions
do have the Lexical closures similar to loops in regular functions. What
the heck is Lexical closure 🤔? At the end of the lexical scope, the
value is stil remembered unlike in the programming languages C, Golang
etc.. Let’s try it out with an example 🙂

``` python
def do_sum(value):
    return lambda a: a + value
```

``` python
adder_3 = do_sum(3)
adder_10 = do_sum(10)
```

``` python
print(adder_3(5))
print(adder_10(5))
```

    8
    15

Here we can see that `adder_3` and `adder_10` are persisting the values
that `3` and `10` that we passed during calling the `do_sum` function
which returned the lambda function which holds our 3 and 10.
