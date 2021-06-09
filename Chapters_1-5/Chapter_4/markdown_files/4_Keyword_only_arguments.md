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
