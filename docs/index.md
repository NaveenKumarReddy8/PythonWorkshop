# 1.1 Getting Started with Python 🐍

It’s pretty easy to start with Python Language 🐍. We would be using
Python \>= 3.9 in this
[Repository](https://github.com/NaveenKumarReddy8/PythonWorkshop) as of
now 🙂

1.  [Download Python](https://www.python.org/)
2.  Pull the docker image
    [naveen8/pythonworkshop](https://hub.docker.com/r/naveen8/pythonworkshop)
    or build a Docker image by using the Dockerfile present in our
    [Repository](https://github.com/NaveenKumarReddy8/PythonWorkshop)
    and run the container out of it which comes bundled with everything
    to run the code present in our repository 🚀.

Lets check the version of Python we are using. We have 2 ways to know
this.

1.  Open the cmd or terminal and execute **python –version**
2.  Using Python’s builtin sys module

<!-- end list -->

``` python
import sys

print(sys.version)
```

    3.9.5 (default, May 12 2021, 15:26:36) 
    [GCC 8.3.0]

# 1.2 Creating variables and assigning values

Python is a Dynamically typed language. It means based on the value we
assign to a variable, it sets the datatype to it.

Now the question is “How do we assign a value to a variable?🤔”. It’s
pretty easy.

``` python
<variable_name> = <value>
```

We have a big list of data types that come as builtins in Python.

  - None
  - bytes
  - int
  - bool
  - float
  - complex
  - string
  - tuple
  - list
  - set
  - dict

Apart from the above prominent data types, we have a few other data
types like namedtuple, frozensets, etc..

Let’s create examples for the above data types, will be little bored in
just seeing the examples. We would be covering in depth about these data
types in upcoming chapters :)

Few things to know before getting into the examples:😉

1.  `print` function is used to print the data on to the console. We
    used `f` inside the print function which is used to format the
    strings as `{}`, these are known as f-strings.
2.  `type` function is used to find the type of the object or datatype.

<!-- end list -->

``` python
# None
none_datatype = None
print(f"The type of none_datatype is {type(none_datatype)}")
```

    The type of none_datatype is <class 'NoneType'>

``` python
# int
int_datatype = 13
print(f"The type of int_datatype is {type(int_datatype)}")
```

    The type of int_datatype is <class 'int'>

``` python
# bytes
bytes_datatype = b"Hello Python!"
print(f"The type of bytes_datatype is {type(bytes_datatype)}")
```

    The type of bytes_datatype is <class 'bytes'>

``` python
# bool
# bool datatype can only have either True or False. Integer value of True is 1 and False is 0.
bool_datatype = True
print(f"The type of bool_datatype is {type(bool_datatype)}")
```

    The type of bool_datatype is <class 'bool'>

``` python
# float
float_datatype = 3.14
print(f"The type of float_datatype is {type(float_datatype)}")
```

    The type of float_datatype is <class 'float'>

``` python
# complex
complex_datatype = 13 + 5j
print(f"The type of complex_datatype is {type(complex_datatype)}")
```

    The type of complex_datatype is <class 'complex'>

``` python
# str
str_datatype = "Hey! Welcome to Python."
print(f"The type of str_datatype is {type(str_datatype)}")
```

    The type of str_datatype is <class 'str'>

``` python
# tuple
tuple_datatype = (None, 13, True, 3.14, "Hey! Welcome to Python.")
print(f"The type of tuple_datatype is {type(tuple_datatype)}")
```

    The type of tuple_datatype is <class 'tuple'>

``` python
# list
list_datatype = [None, 13, True, 3.14, "Hey! Welcome to Python."]
print(f"The type of list_datatype is {type(list_datatype)}")
```

    The type of list_datatype is <class 'list'>

``` python
# set
set_datatype = {None, 13, True, 3.14, "Hey! Welcome to Python."}
print(f"The type of set_datatype is {type(set_datatype)}")
```

    The type of set_datatype is <class 'set'>

``` python
# dict
dict_datatype = {
    "language": "Python",
    "Inventor": "Guido Van Rossum",
    "release_year": 1991,
}
print(f"The type of dict_datatype is {type(dict_datatype)}")
```

    The type of dict_datatype is <class 'dict'>

## Tidbits

The thing which I Love the most about Python is the dynamic typing, Due
to this we might not know what are the types of parameters we might pass
to a function or method. If you pass any other type of object as a
parameter, **boom** you might see Exceptions raised during the runtime👻.
Let’s remember that **With great power comes great responsibility** 🕷

To help the developers with this, from Python 3.6 we have [Type
Hints(PEP-484)](https://www.python.org/dev/peps/pep-0484/).

We will get through these in the coming chapters. Stay tuned
😇

# 1.3 Python Keywords and allowed Variable names

``` python
# To retrieve the python keyword list, we can use the keyword built-in package.
import keyword
```

Let’s print the keywords present.

keyword.kwlist returns python’s keywords in a list datatype.

We are using \*(starred) expression to print the values returned by
keyword.kwlist each separated by “”(newline).

``` python
print(*keyword.kwlist, sep="\n")
```

    False
    None
    True
    __peg_parser__
    and
    as
    assert
    async
    await
    break
    class
    continue
    def
    del
    elif
    else
    except
    finally
    for
    from
    global
    if
    import
    in
    is
    lambda
    nonlocal
    not
    or
    pass
    raise
    return
    try
    while
    with
    yield

## Variable Names

TLDR:

  - Variable names shouldn’t be same as that of built-in keywords.
  - Variable name shouldn’t start with a number or with a symbol(except
    “\_”, protected and private attributes are created using
    underscore, 🤔 it’s better to say it as name mangling rather than
    protected or private. That’s for a different notebook session 😀).

PS: Don’t give a try naming the variable that starts with \#, it would
be a Python’s comment, which would be neglected by the interpreter 😅.

### Allowed Variable names

``` python
x = True
_x = False
x_y = "Hey Python geek!"
x9 = "alphabet_number"
# Python is a case sensitive language, so `x` is different from `X`. Let's give it a try.
X = "one more variable"
print(f"x is equal to X:{x==X}")
```

    x is equal to X:False

### Invalid Variable names

We will be using `exec` within `try`-`except` to catch the syntax error.
🤔 But why? Syntax errors can’t be catched, well it shouldn’t for good 😉.
so we are using `exec` to execute the code.

`exec` takes the string argument and interprets the string as a python
code.

``` python
# variable name starting with number.
code_string = "9x=True"
try:
    exec(code_string)
except SyntaxError as exc:
    print(f"Ouch! In the exception: {exc}")
```

    Ouch! In the exception: invalid syntax (<string>, line 1)

``` python
# variable name starting with a symbol(other than underscore"_").
code_string = "$g = 10"
try:
    exec(code_string)
except SyntaxError as exc:
    print(f"Ouch! In the exception: {exc}")
```

    Ouch! In the exception: invalid syntax (<string>, line 1)

# 1.4 Data types

`Kiddo explanation 😇:`

We might use many materials like sand, bricks, concrete to construct a
house. These are basic and essential needs to have the construction done
and each of them have a specific role or usage.

Likewise, we need various data types like string, boolean, integer,
dictionary etc.. for the development of a code. We need to know where to
use a specific data type and it’s functionality.😊

We have various built-in data types that come out of the box 😎.

| Data type  | Mutable? |
| ---------- | -------- |
| None       | ❌        |
| bytes      | ❌        |
| bool       | ❌        |
| int        | ❌        |
| float      | ❌        |
| complex    | ❌        |
| str        | ❌        |
| tuple      | ❌        |
| list       | ✅        |
| set        | ✅        |
| dictionary | ✅        |

The First question we would be interested in is “What is Mutable?🤔”. If
a object can be altered after its creation, then it is Mutable, else
Immutable.

### **None**

None is a singleton object, which represents empty or null.

#### *Example of None usage*:

In this example, Let’s try getting the environment variables 😉

We would be using the `os` module’s `getenv` method to fetch the
environment variable’s value, if there isn’t that environment variable,
it would be returning `None`

``` python
import os

# let's set a env variable first
new_environment_variable_name: str = input("Enter the variable name: \n>>>")
new_environment_variable_value: str = input("Enter the variable's value: \n>>>")
os.environ[new_environment_variable_name] = new_environment_variable_value

# Now let's try to fetch a envrionment's variable value
env_variable_name: str = input("Enter the variable name to be searched: \n>>>")
value = os.getenv(env_variable_name)
if value is None:
    print(f"There is no environment variable named {env_variable_name}")
else:
    print(
        f"The value assigned for the environment variable named {env_variable_name} is {value}"
    )
```

    Enter the variable name: 
    >>> Language
    Enter the variable's value: 
    >>> Python
    Enter the variable name to be searched: 
    >>> Golang
    
    
    There is no environment variable named Golang

### **bytes**

byte objects are the sequences of bytes, these are machine readable form
and can be stored on the disk. Based on the encoding format, the bytes
yield results.

bytes can be converted to string by decoding it, vice-versa is known as
encoding.

bytes objects can be created by prefixing `b` before the string.

``` python
bytes_obj: bytes = b"Hello Python Enthusiast!"
print(bytes_obj)
```

    b'Hello Python Enthusiast!'

We see that they are visually the same as string when printed. But
actually they are ASCII values, for the convenience of the developer, we
see them as human readable strings.

But how to see the actual representation of bytes object? 🤔 It’s pretty
simple 😉\! We can typecast the bytes object to a list and we see each
character as it’s respective ASCII
    value.

``` python
print(list(bytes_obj))
```

    [72, 101, 108, 108, 111, 32, 80, 121, 116, 104, 111, 110, 32, 69, 110, 116, 104, 117, 115, 105, 97, 115, 116, 33]

### **bool**

bool objects have only two values: `True`✅ and `False`❌, integer
equivalent of True is 1 and for False is 0

``` python
do_we_love_python = True
if do_we_love_python:
    print("🐍 Python too loves and takes care of you ❤️")
else:
    print("🐍 Python still loves you ❤️")
```

    🐍 Python too loves and takes care of you ❤️

PS: Boolean values in simple terms mean **Yes** for `True` and **No**
for `False`

### **int**

int objects are any mathematical Integers. pretty easy right 😎

``` python
# Integer values can be used for any integer arithmetics.
# A few simple operations are addition, subtraction, multiplication, division etc..
operand_1 = int(input("Enter an integer value: \n>>>"))
operand_2 = int(input("Enter an integer value: \n>>>"))
print(operand_1 + operand_2)
```

    Enter an integer value: 
    >>> 3
    Enter an integer value: 
    >>> 5
    
    
    8

### **float**

float objects are any rational numbers.

``` python
# Like integer objects float objects are used for decimal arithmetics
# A few simple operations are addition, subtraction, multiplication, division etc..
# We are typcasting integer or float value to float values explicitly.
operand_1 = float(input("Enter the integer/float value: \n>>>"))
operand_2 = float(input("Enter the integer/float value: \n>>>"))
print(operand_1 + operand_2)
```

    Enter the integer/float value: 
    >>> 1.2
    Enter the integer/float value: 
    >>> 2.3
    
    
    3.5

### **complex**

complex objects aren’t so complex to understand 😉

complex objects hold a Real number and an imaginary number. While
creating the complex object, we would be having a `j` beside the
imaginary number.

``` python
operand_1 = 10 + 5j
operand_2 = 3 + 4j
print(operand_1 * operand_2)
```

    (10+55j)

explanation for the above math: 😉

``` math
(3+4j)*(10+5j)
3(10+5j) + 4j(10+5j)
30 + 15j + 40j + 20(j*j)
30 + 15j + 40j + 20(-1)
30 + 15j + 40j - 20
30 - 20 + 15j + 40j
10 + 55j
```

### **str**

string objects hold an sequence of characters.

``` python
my_string = "🐍 Python is cool"
print(my_string)
```

    🐍 Python is cool

### **tuple**

tuple object is an immutable datatype which can have any datatype
objects inside it and is created by enclosing paranthesis `()` and
objects are separated by a comma.

Once the tuple object is created, the tuple can’t be modified, although
if the objects in the tuple are mutable, they can be changed 😊

The objects in the tuple are ordered, So the objects in the tuple can be
accessed by using its index ranging from 0 to (number of elements -
1).

``` python
# tuples are best suited for having data which doesn't change in it's lifetime.

apple_and_its_colour = ("apple", "red")
watermelon_and_its_colour = ("watermelon", "green")

language_initial_release_year = ("Golang", 2012)
language_initial_release_year = ("Angular", 2010)
language_initial_release_year = ("Python", 1990)

# We can't add new data types objects, delete the existing datatype objects, or change the values
# of the existing objects.

# We can get the values by index.
print(
    f"{language_initial_release_year[0]} is released in {language_initial_release_year[1]}"
)
```

    Python is released in 1990

### **list**

list objects are similar to tuple, the differences are the list object
is mutable, so we can add or remove objects in the list even after its
creation. It is created by using `[]`.

``` python
about_python = [
    "interpreted",
    "object-oriented",
    "dynamically typed",
    "open source",
    "high level language",
    "🐍",
    1990,
]
print(about_python)
# We can add more values to the above list. append method of list object is used to add a new object.
# let's give a try 🙃

about_python.append("Guido Van Rossum")
print(about_python)
```

    ['interpreted', 'object-oriented', 'dynamically typed', 'open source', 'high level language', '🐍', 1990]
    ['interpreted', 'object-oriented', 'dynamically typed', 'open source', 'high level language', '🐍', 1990, 'Guido Van Rossum']

### **set**

set objects are unordered, unindexed, non repetitive collection of
objects. Mathematical set theory operations can be applied using set
datatype objects. 😊 it is created by using `{}`.

PS: `{}` denotes a dictionary, we need to use `set()` for creating an
empty set, there won’t be this issue when creating set objects
containing objects, for example: `{1,"a"}`

set objects are good for having the mathematical set operations.

``` python
set_obj = {6, 4, 4, 3, 10, "Python", "Python", "Golang"}
# We see that we have created a set with 8 objects.
print(set_obj)
# But when printed, we see that only 6 are present because set doesn't allow same objects repeated.
```

    {'Golang', 3, 4, 6, 'Python', 10}

### **dict**

dictionary objects are used for creating key-value pairs, Here keys
would be unique while values can be repeated.

The object assigned to a key can be fetched by using `<dict_obj>[key]`
which raises a KeyError when no given key is found. The other way to
fetch is by using `<dict_obj>.get(key)` which returns `None` by default
if no key is found.

``` python
dict_datatype = {
    "language": "Python",
    "Inventor": "Guido Van Rossum",
    "release_year": 1991,
}
print(f"The programming language is: {dict_datatype['language']}")
# We could use get method to prevent KeyError if the given Key is not found.
result = dict_datatype.get("LatestRelease")
# Value of the result would be None as the key LatestRelease is not present in dict_datatype
print(f"The result is: {result}")
```

    The programming language is: Python
    The result is: None

# 1.5 Collection Types

We have many collection types in Python, `str`, `int` objects hold only
value, but coming to collection types, we can have various objects
stored in the collections.

The Collection Types we have in Python are: \* Tuple \* List \* Set \*
Dictionary

## Tuple

A Tuple is a ordered collection of objects and it is of fixed length and
immutable, so the values in the tuple can not be changed nor added or
removed.

Tuples are generally used for small collections which we are sure about
them from right before such as IP addresses and port numbers. Tuples are
represented with paranthesis `()`

Example:

``` python
ip_address_port = ("127.0.0.1", 8080)
```

A tuple with a single member needs to have a trailing comma, else the
type of the variable would be the datatype of the member itself.

``` python
# Proper way to create a single member tuple.
single_member_tuple = ("one",)
print(type(single_member_tuple))
single_member_tuple = ("one",)
print(type(single_member_tuple))
```

    <class 'tuple'>
    <class 'tuple'>

``` python
# Improper way trying to create a single member tuple.
single_member_tuple = "one"
print(type(single_member_tuple))
```

    <class 'str'>

## List

List collection types are similar to tuples, the only difference would
be that new objects can be created, removed or object’s data can be
modified 😉.

``` python
int_list = [1, 2, 3]
string_list = ["abc", "defghi"]
```

``` python
# A list can be empty:
empty_list = []
```

objects in the list are not restricted to be of a particular datatype.
let’s see an example 👇.

``` python
mixed_list = [1, "abc", True, 3.14, None]
```

list can contain lists as objects too. These are called nested lists.

``` python
nested_list = [[1, 2, 3], ["a", "b", "c"]]
```

The objects present in the list can be accessed by the index it is
placed. The index starts from 0 👻.

``` python
my_list = ["Iron man", "Thor", "Wonder Woman", "Wolverine", "Naruto"]
```

``` python
print(my_list[0])
print(my_list[1])
```

    Iron man
    Thor

In the `my_list`, we have 5 strings in the list, but in the below
example, let’s give a try to get the 100th index element which is not
present in the `my_list` 🙄.

As there is no 100th element, we would be seeing an `IndexError`
exception.

``` python
try:
    print(my_list[100])
except IndexError as exc:
    print(f"👻 Ouch! we got into IndexError exception: {exc}")
```

    👻 Ouch! we got into IndexError exception: list index out of range

The question I have is, how do I get the 2nd element from the last 🤔?
Should I find the length of the list and access the \<length - 2\>? Yup,
it works 😉.

But we have one good way to do it by negative index, example: `-2`

``` python
# Access the 2nd element from the last.
print(my_list[-2])
```

    Wolverine

#### We have a few methods of list that we can give it a try now 😎

`append`

``` python
# Append a new item to the list.
# We use append method of the list.
my_list.append("Zoro")
print(my_list)
```

    ['Iron man', 'Thor', 'Wonder Woman', 'Wolverine', 'Naruto', 'Zoro']

`remove`

``` python
# Remove the item present in the list.
# We use remove method of the list.
# If there's no object that we are trying to remove in the list, then ValueError would be raised.
try:
    my_list.remove("Zoro")
    print(my_list)
except ValueError as exc:
    print(f"Caught ValueError: {exc}")
```

    ['Iron man', 'Thor', 'Wonder Woman', 'Wolverine', 'Naruto']

`insert`

``` python
# Insert a object at a particular index.
# We use insert method of the list.
my_list.insert(1, "Super Man")
print(my_list)
```

    ['Iron man', 'Super Man', 'Thor', 'Wonder Woman', 'Wolverine', 'Naruto']

`reverse`

``` python
# Reverse the objects in the list.
# we use reverse method of the list.
my_list.reverse()
print(my_list)

# revert to the actual order
my_list.reverse()

# We have one more method too for this 🙃
# The indexing of the list would be in the form of list[start: end: step]
# We will use step as -1 to get the elements in reverse order 😉
print(my_list[::-1])
```

    ['Naruto', 'Wolverine', 'Wonder Woman', 'Thor', 'Super Man', 'Iron man']
    ['Naruto', 'Wolverine', 'Wonder Woman', 'Thor', 'Super Man', 'Iron man']

`index`

``` python
# Index of an object in the list.
# we use index method of the list.
# raises a ValueError, if no given object is found in the list.
try:
    print(my_list.index("Naruto"))
except ValueError as exc:
    print(f"Caught ValueError: {exc}")
```

``` 
5
```

`pop`

``` python
# Pop is used to remove and return the element present at the last in the list(index=-1) by default.
# When index argument is passed, it would remove and return the element at that index.
# raises IndexError when no object is present at the given Index.
try:
    last_element = (
        my_list.pop()
    )  # can be passed index argument value, if required to pop at a specific index.
    print(last_element)
except IndexError as exc:
    print(f"Caught IndexError: {exc}")
```

    Naruto

## Set

A set is collection of unique items, the items does not follow insertion
order.

Defining an set is pretty similar to a list or tuple, it is enclosed in
`{}`

PS 🔔: If we need to have a empty set, `{}` won’t create a set, it
creates a empty dictionary instead. So we need to create a empty set by
using
`set()`

``` python
anime = {"Dragon ball", "One Piece", "Death Note", "Full Metal Alchemist", "Naruto"}
print(anime)
```

    {'Dragon ball', 'Full Metal Alchemist', 'One Piece', 'Naruto', 'Death Note'}

`add`

``` python
anime.add("Tokyo Ghoul")
print(anime)
```

    {'Dragon ball', 'Full Metal Alchemist', 'One Piece', 'Tokyo Ghoul', 'Naruto', 'Death Note'}

`remove`

remove method of set can be used to remove a particular object from the
set, if the object is not present, KeyError would be raised.

``` python
try:
    anime.remove("Tokyo Ghoul")
    print(anime)
except KeyError as exc:
    print(
        f"Caught KeyError as there's given anime series present in the anime set: {exc}"
    )
```

    {'Dragon ball', 'Full Metal Alchemist', 'One Piece', 'Naruto', 'Death Note'}

## Dictionary

As in few other languages, we have hashmaps, Dictionaries in python are
similar. It has unique Key - Value pairs.

The Key and Value can be of any object. Each Key-Value pair is separated
by a `,`

``` python
anime_protagonist = {
    "Dragon Ball": "Goku",
    "One Piece": "Luffy",
    "Death Note": "Yagami Light",
    "Full Metal Alchemist": "Edward Elric",
    "Naruto": "Naruto",
}
print(anime_protagonist)
```

    {'Dragon Ball': 'Goku', 'One Piece': 'Luffy', 'Death Note': 'Yagami Light', 'Full Metal Alchemist': 'Edward Elric', 'Naruto': 'Naruto'}

We can access the values of the dictionary by `<dictionary>[<key>]`. If
there’s no `<key>` in the dictionary, we would be seeing an KeyError 🔑❌

``` python
try:
    print(anime_protagonist["Dragon Ball"])
except KeyError as exc:
    print(
        f"👻 Ouch, Keyerror has been raised as no given key is found in the dictionary: {exc}"
    )
```

    Goku

Iterate over keys, values and both in the dictionary 🐇

``` python
# Keys
print("===Keys===")
for my_key in anime_protagonist.keys():
    print(my_key)

# Values
print("===Values===")
for my_value in anime_protagonist.values():
    print(my_value)

# Key-Values
print("===Key-Values===")
for my_key, my_value in anime_protagonist.items():
    print(f"{my_key} : {my_value}")
```

    ===Keys===
    Dragon Ball
    One Piece
    Death Note
    Full Metal Alchemist
    Naruto
    ===Values===
    Goku
    Luffy
    Yagami Light
    Edward Elric
    Naruto
    ===Key-Values===
    Dragon Ball : Goku
    One Piece : Luffy
    Death Note : Yagami Light
    Full Metal Alchemist : Edward Elric
    Naruto : Naruto

PS 🔔: Are dictionaries ordered collection🤔?

From Python 3.7 dictionaries follow insertion order 😎

In python versions older than 3.7, the insertion of items is not
ordered🙄. No problem 🙃, we still have OrderedDict(present in
collections module) `from collections import OrderedDict` which does the
same 😉

# 1.6 IDEs/Editors for Python

We have a lot of IDEs/Editors available for Python. Although we get
**IDLE** abrevated as **I**ntegrated **D**evelopment and **L**earning
**E**nvironment

IDLE gets installed automatically on Windows along with Python
installation. On Mac or \*nix operating systems we need install it
manually

A few great IDEs/Editors for
Python

## PyCharm

<a href="https://www.jetbrains.com/pycharm/" target="_blank"><img src="https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_1/resources/PyCharm_logo.png?raw=true" width=100 length=100></img></a>

## Spyder

<a href="https://www.spyder-ide.org/" target="_blank"><img src="https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_1/resources/Spyder_logo.png?raw=true" width=100 length=100></img></a>

## Visual Studio Code

<a href="https://code.visualstudio.com/" target="_blank"><img src="https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_1/resources/VisualStudio_logo.png?raw=true" width=100 length=100></img></a>

## Atom

<a href="https://atom.io/" target="_blank"><img src="https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_1/resources/Atom_logo.png?raw=true" width=100 length=100></img></a>

## Jupyter

<a href="https://jupyter.org/" target="_blank"><img src="https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_1/resources/Jupyter_logo.png?raw=true" width=100 length=100></img></a>

## Google Colab

This is my Personal Favourite when I need huge memory and GPU. We get
those for free here
😎

<a href="https://colab.research.google.com" target="_blank"><img src="https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_1/resources/GoogleColab_logo.png?raw=true" width=100 length=100></img></a>

PS 😉: I always say to prefer using basic text editor like notepad/gedit
when learning a new language and use a good IDE if your Boss wants you
to do the work quick 😜

# 1.7 User Input

`input` is a builtin function in Python, which prompts for the user to
enter as standard input upto newline(`\n`).

`input` function always returns a string datatype, we need to typecast
to respective datatype required.

Python 2.x’s `input` is different from Python 3.x’s `input`.

Python 2.x’s `input` evaluates the string as a python command, like
`eval(input())`.

``` python
user_entered = input("Hey Pythonist! Please enter anything: \n>>>")
print(user_entered)
```

    Hey Pythonist! Please enter anything: 
    >>> Hello Python 🐍
    
    
    Hello Python 🐍

Let’s try typecasting to integers we got from the user.

If the input is not a valid integer value, typecasting to integer raises
`ValueError`

``` python
try:
    variable_1 = input("Enter variable 1 to be added: \n>>>")  # string
    variable_2 = input("Enter variable 2 to be added \n>>>")  # string
    integer_1 = int(variable_1)  # Typecasting to integer
    integer_2 = int(variable_2)  # Typecasting to integer
    print(f"sum of {variable_1} and {variable_2} = {integer_1+integer_2}")
except ValueError as exc:
    print(f"👻 unable to typecast to integer: {exc}")
```

    Enter variable 1 to be added: 
    >>> I am not an Integer 😜
    Enter variable 2 to be added 
    >>> I am not an Integer as well 😜
    
    
    👻 unable to typecast to integer: invalid literal for int() with base 10: 'I am not an Integer 😜'

# 1.8 Builtins

``` python
import builtins
```

We can see what all builtins does Python provide.

For our sake, we are traversing the complete list and printing the
number and builtin attribute.

The function we are usign to traverse in `dir(builtins)` and get index
and builtin attribute is `enumerate` which is also a bulitin 😉

``` python
for index, builtin_attribute in enumerate(dir(builtins)):
    print(f"{index}) {builtin_attribute}")
```

    0) ArithmeticError
    1) AssertionError
    2) AttributeError
    3) BaseException
    4) BlockingIOError
    5) BrokenPipeError
    6) BufferError
    7) BytesWarning
    8) ChildProcessError
    9) ConnectionAbortedError
    10) ConnectionError
    11) ConnectionRefusedError
    12) ConnectionResetError
    13) DeprecationWarning
    14) EOFError
    15) Ellipsis
    16) EnvironmentError
    17) Exception
    18) False
    19) FileExistsError
    20) FileNotFoundError
    21) FloatingPointError
    22) FutureWarning
    23) GeneratorExit
    24) IOError
    25) ImportError
    26) ImportWarning
    27) IndentationError
    28) IndexError
    29) InterruptedError
    30) IsADirectoryError
    31) KeyError
    32) KeyboardInterrupt
    33) LookupError
    34) MemoryError
    35) ModuleNotFoundError
    36) NameError
    37) None
    38) NotADirectoryError
    39) NotImplemented
    40) NotImplementedError
    41) OSError
    42) OverflowError
    43) PendingDeprecationWarning
    44) PermissionError
    45) ProcessLookupError
    46) RecursionError
    47) ReferenceError
    48) ResourceWarning
    49) RuntimeError
    50) RuntimeWarning
    51) StopAsyncIteration
    52) StopIteration
    53) SyntaxError
    54) SyntaxWarning
    55) SystemError
    56) SystemExit
    57) TabError
    58) TimeoutError
    59) True
    60) TypeError
    61) UnboundLocalError
    62) UnicodeDecodeError
    63) UnicodeEncodeError
    64) UnicodeError
    65) UnicodeTranslateError
    66) UnicodeWarning
    67) UserWarning
    68) ValueError
    69) Warning
    70) ZeroDivisionError
    71) __IPYTHON__
    72) __build_class__
    73) __debug__
    74) __doc__
    75) __import__
    76) __loader__
    77) __name__
    78) __package__
    79) __spec__
    80) abs
    81) all
    82) any
    83) ascii
    84) bin
    85) bool
    86) breakpoint
    87) bytearray
    88) bytes
    89) callable
    90) chr
    91) classmethod
    92) compile
    93) complex
    94) copyright
    95) credits
    96) delattr
    97) dict
    98) dir
    99) display
    100) divmod
    101) enumerate
    102) eval
    103) exec
    104) filter
    105) float
    106) format
    107) frozenset
    108) get_ipython
    109) getattr
    110) globals
    111) hasattr
    112) hash
    113) help
    114) hex
    115) id
    116) input
    117) int
    118) isinstance
    119) issubclass
    120) iter
    121) len
    122) license
    123) list
    124) locals
    125) map
    126) max
    127) memoryview
    128) min
    129) next
    130) object
    131) oct
    132) open
    133) ord
    134) pow
    135) print
    136) property
    137) range
    138) repr
    139) reversed
    140) round
    141) set
    142) setattr
    143) slice
    144) sorted
    145) staticmethod
    146) str
    147) sum
    148) super
    149) tuple
    150) type
    151) vars
    152) zip

There’s a difference between **Keywords** and **Builtins** 🤔. We can’t
assign a new object to the Keywords, if we try to do, we would be seeing
an exception raised 🔴. But coming to builtins, we can assign any object
to the builtin names, and Python won’t have any issues, but it’s not a
good practice to do so 😇

# 1.9 Module

A module is a importable python file and can be created by creating a
file with extension as `.py`

We can import the objects present in the module.

In the below 👇 example, we are importing `hello` function from `greet`
module (greet.py)

`greet.py`

``` python
"""Module to greet the user"""

import getpass


def hello():
    username: str = getpass.getuser().capitalize()
    print(f"Hello {username}. Have a great day :)")


if __name__ == "__main__":
    hello()
```

``` python
from greet import hello
```

``` python
hello()
```

    Hello Root. Have a great day :)

let’s have a look at the greet.py module. Well, we see the below `if`
condition.

``` python
if __name__ == "__main__":
    hello()
```

But why do we we need to have it🤔? We can just call the `hello` function
at the end as

``` python
hello()
```

Let’s see the below👇 code to know why we use the first approach rather
than the second.🙃

``` python
import greet
```

🔍 The above code doesn’t greet you 😢

``` python
%run ./greet.py
```

    Hello Root. Have a great day :)

But, this above code greets you😎.

The reason for this is, in the first snippet, we are importing a module
called `greet`, so the actual code we are executing is in this REPL or
Ipython shell.

Coming to second snippet, we are executing the `greet.py` directly.

Value of `__name__` would be “\_\_main\_\_” if we are executing a Python
module directly. If we import a module(using the module indirectly) then
value of `__name__` would be the relative path of the imported module.
In the first example the `__name__` in the greet module would be
“greet”. As the “greet” is not equal to “\_\_main\_\_”, that’s the
reason, we never went to the `if` condition when we imported greet
module. 🙂

# 1.10 String representations of objects: str() vs repr()

`str()` and `repr()` are builtin functions used to represent the object
in the form of string.

Suppose we have an object `x`.

`str(x)` would be calling the dunder (double underscore) `__str__`
method of `x` as `x.__str__()`

`repr(x)` would be calling the dunder (double underscore) `__repr__`
method of `x` as `x.__repr__()`

😑 Well, what all are these new terms `__str__` and `__repr__` 🤔?

As we know that Python is object oriented language, and so supports
inheritance. In Python, all the classes would inherit from the base
class `object`. `object` class has the methods `__str__`, `__repr__` and
a lot more (which can be deepdived in someother notebook 😉). Hence every
class would be having `__str__` and `__repr__` implicitly 😊

Python’s official documentations states that `__str__` should be used to
represent a object which is human readable(informal), whereas `__repr__`
is used for official representation of an object.

``` python
from datetime import datetime

now = datetime.now()

print(f"The repr of now is: {repr(now)}")
print(f"The str of now is: {str(now)}")
```

    The repr of now is: datetime.datetime(2021, 6, 6, 4, 11, 4, 520866)
    The str of now is: 2021-06-06 04:11:04.520866

``` python
class ProgrammingLanguage:
    def __init__(self, language: str):
        self.language = language


language_obj = ProgrammingLanguage(language="Python")
print(f"The repr of language_obj is: {repr(language_obj)}")
print(f"The str of language_obj is: {str(language_obj)}")
```

    The repr of language_obj is: <__main__.ProgrammingLanguage object at 0x7f080861d9d0>
    The str of language_obj is: <__main__.ProgrammingLanguage object at 0x7f080861d9d0>

In the above example we see that default repr output. The address of the
object might be different for everyone.

Now let’s try to override the `__str__` and `__repr__` methods and see
how the representations work

``` python
class Human:
    def __init__(self, name: str, age: int):
        self.name = name
        self.age = age

    # overriding __str__ method
    def __str__(self):
        return f"I am {self.name} of age {self.age}"

    # overriding __repr__ method
    def __repr__(self):
        return f"Human(name={self.name}, age={self.age}) object at {hex(id(self))}"


human_obj = Human(name="IronMan", age=48)
print(f"The repr of human_obj is: {repr(human_obj)}")
print(f"The str of human_obj is: {str(human_obj)}")
```

    The repr of human_obj is: Human(name=IronMan, age=48) object at 0x7f08085da040
    The str of human_obj is: I am IronMan of age 48

We see that the result representations of the `human_obj` have been
changed as we have overridden the `__str__` and `__repr__` methods 😊

# 1.11 Installing packages

Python has one of the largest programming community who build 3rd party
packages and support community help ❤️.

That’s pretty good, Now, how do we install the packages 🤔? We could use
Python’s package manager **PIP**.

Python’s official 3rd party package repository is [Python Package Index
(PyPI)](https://pypi.org/) and its index url is https://pypi.org/simple

Here’s how to use PIP in shell/terminal:

To search for a package:

``` shell
pip search [package name]
```

To install a package: Install

``` shell
    pip install [package name]
```

Install a specific version

``` shell
    pip install [package name]==[version]
```

Install greater than a specific version

``` shell
    pip install [package name]>=[verion]
```

To uninstall a package

``` shell
pip uninstall [package name]
```

## Tidbits 🔔

There are modern ways of managing the dependencies using
[poetry](https://python-poetry.org/),
[flit](https://flit.readthedocs.io/en/latest/index.html) etc.. We will
get to those soon…😊

# 1.12 Help Utility

Python has a builtin help utility which helps to know about the
keywords, builtin functions, modules.

``` python
help()
```

You can pass keyword, bulitin function or Module to help function to
know about the same.

``` python
import os
```

``` python
# Help utility on the builtin module 'sys'
help(os)
```

*`snipped output:`*

``` shell

Help on module os:

NAME
    os - OS routines for NT or Posix depending on what system we're on.

MODULE REFERENCE
    https://docs.python.org/3.9/library/os
    
    The following documentation is automatically generated from the Python
    source files.  It may be incomplete, incorrect or include features that
    are considered implementation detail and may vary between Python
    implementations.  When in doubt, consult the module reference at the
    location listed above.
```

``` python
# Help utility on getcwd function of sys module
help(os.getcwd)
```

    Help on built-in function getcwd in module posix:
    
    getcwd()
        Return a unicode string representing the current working directory.

🔔 Help function returns the docstrings associated with the respective
Modules, Keywords or functions.

# 2.1 Indendation

I have seen memes of people fighting about opening braces, whether they
should be starting in the same line or in next line in the programming
languages like C, Java etc… 👻

![Types of using curly
braces](https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_2/resources/type_of_using_curly_braces.jpg?raw=true)

**Python Developers be like:** Hold my Beer 🍺

![Python developers: we don’t do that
here](https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_2/resources/curly_braces_we_dont_do_that_here.jpg?raw=true)

In Python, we don’t use curly braces for grouping the statements.
Instead, we use Indendation.

Each group of statements are indended using spaces or tabs.

``` python
class Example:
    # Every method belonging to a class must be indended equally.
    def __init__(self):
        name = "indendation example"

    def check_for_odd_or_even(self, number: int):
        # Everything that belongs to this method are indended as well.
        if number % 2 == 0:
            print(f"{number} is even.")
        else:
            print(f"{number} is odd.")


# We can see that the say_hello_multiple_times is not indended inside the Example class.
# Hence, say_hello_multiple_times function doesn't belong to Example class.
def say_hello_multiple_times(count: int):
    for _ in range(count):
        # Loops or conditions are also needed to be intended.
        print("Hello")
```

[PEP-8](https://www.python.org/dev/peps/pep-0008/) recommends to use **4
Spaces instead of Tabs**. Although using of Tabs do work, but ensure
**not** to mix both tabs and spaces, as you might get `TabError` for
such indendations.

### A meme on indendation 😜

If using a normal text editor like notepad where it doesn’t show the
warnings or errors, sometimes we might get errors due to wrong
indendation or mix usage of both tabs and spaces, we get an error and it
would be tricky to resolve it as it is invisible.

![Get Error for extra
space](https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_2/resources/funny_get_errors_for_extra_space.jpg?raw=true)

# 3.1 Comments and Docstrings

Comments are used to explain the code. The interpreter doesn’t execute
the comments. There are 3 types of comments in Python:

  - Single Line
  - In-Line
  - Multi Line

## Single Line

Single line comments are written in a single line. Single line comments
start with `#`

``` python
# Here's a single line comment
```

## In-Line

In-Line comments are written beside the code.

``` python
print("Hello")  # Here's a In-Line comment
```

## Multi Line

Sometimes we need to write a huge explanation using comments, in those
cases we do use multi-line comments. multiline comments are enclosed in
`""" """` or `''' '''`

``` python
"""
Here's a 
multiline comment.
"""
```

## Docstrings

Docstrings are specific type of comments that are stored as a attribute
to the module, class, method or function.

Docstrings are written similar to the multi-line comments using `"""
"""` or `''' '''`, the only difference would be they are written exactly
at the start(first statement) of the module, class, method or function.

Docstrings can be programatically acccessed using the `__doc__` method
or through the built-in function `help`. Let’s give a try 😎.

``` python
def double_the_value(value: int):
    """Doubles the integer value passed to the function and returns it."""
    return value * 2
```

### Using help

`help` function provides the docstrings as well as the information about
the module, class, method or function.

``` python
help(double_the_value)
```

    Help on function double_the_value in module __main__:
    
    double_the_value(value: int)
        Doubles the integer value passed to the function and returns it.

### Using `__doc__`

``` python
print(double_the_value.__doc__)
```

    Doubles the integer value passed to the function and returns it.

Can we use the single line comments instead of multi-line docstrings 🤔?
Let’s try this as well.

``` python
def test_single_line_comment_as_docstring():
    # This is a single-line comment
    pass
```

``` python
print(test_single_line_comment_as_docstring.__doc__)
```

    None

We can see that `None` is printed, which explains that we can’t use
single-line comments as docstrings 🙂

## Docstrings for documentation of code.

[PEP-257](https://www.python.org/dev/peps/pep-0257/) defines two types
of docstrings.

  - One-Line docstring
  - Multi-Line
docstring

### [One-Line docstring](https://www.python.org/dev/peps/pep-0257/#one-line-docstrings)

One-line docstrings are suited for short and simple Modules, classes,
methods or functions.

``` python
def one_line_docstring():
    """This is a one-line docstring"""
    pass
```

### [Multi-Line docstring](https://www.python.org/dev/peps/pep-0257/#multi-line-docstrings)

Multi-line docstrings are suited for long, complex Modules, classes,
methods or functions

``` python
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

There are multiple styles of writing docstrings such as
[reStructuredText](https://docutils.sourceforge.io/rst.html), [Google
Python Style
Guide](https://google.github.io/styleguide/pyguide.html#38-comments-and-docstrings),
[Numpy
style](https://google.github.io/styleguide/pyguide.html#38-comments-and-docstrings).

We could use any of the above docstrings style as long as we stay
consistent.

[Sphinx](https://www.sphinx-doc.org/en/master/) is a tool that generated
beautiful HTML based documentation 📜 from the docstrings we provide in
our code. reStructuredText is the default style, for other styles like
Google Python style, numpy we could use plugins like
[Napoleon](https://www.sphinx-doc.org/en/master/usage/extensions/napoleon.html).

Sphinx also provides various templates we can choose from to create the
HTML documentation out of it.
😎♥️

### A meme on Documentation 😂

![Documentation](https://github.com/NaveenKumarReddy8/Temporary-host-store/blob/main/Chapters_1-5/Chapter_3/resources/documentation.png?raw=true)

It’s always good and professional to have our code documented 🙂.

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
