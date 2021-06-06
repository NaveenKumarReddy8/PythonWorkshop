# 1.7 User Input

`input` is a builtin function in Python, which prompts for the user to enter as standard input upto newline(`\n`).

`input` function always returns a string datatype, we need to typecast to respective datatype required.

Python 2.x's `input` is different from Python 3.x's `input`.

Python 2.x's `input` evaluates the string as a python command, like `eval(input())`.


```python
user_entered = input("Hey Pythonist! Please enter anything: \n>>>")
print(user_entered)
```

    Hey Pythonist! Please enter anything: 
    >>> Hello Python 🐍


    Hello Python 🐍


Let's try typecasting to integers we got from the user. 

If the input is not a valid integer value, typecasting to integer raises `ValueError`


```python
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

