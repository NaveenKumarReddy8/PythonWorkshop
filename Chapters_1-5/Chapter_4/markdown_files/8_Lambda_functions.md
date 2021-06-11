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
