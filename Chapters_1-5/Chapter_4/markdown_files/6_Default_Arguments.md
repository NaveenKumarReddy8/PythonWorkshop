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
