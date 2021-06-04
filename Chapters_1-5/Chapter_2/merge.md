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
