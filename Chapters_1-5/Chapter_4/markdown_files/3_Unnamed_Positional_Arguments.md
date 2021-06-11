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
