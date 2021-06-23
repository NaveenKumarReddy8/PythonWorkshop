# 1.12 Help Utility

Python has a builtin help utility which helps to know about the keywords, builtin functions, modules.

```Python
help()
```
You can pass keyword, bulitin function or Module to help function to know about the same.


```python
import os
```


```python
# Help utility on the builtin module 'sys'
help(os)
```

*`snipped output:`*
```shell

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


```python
# Help utility on getcwd function of sys module
help(os.getcwd)
```

    Help on built-in function getcwd in module posix:
    
    getcwd()
        Return a unicode string representing the current working directory.
    


🔔 Help function returns the docstrings associated with the respective Modules, Keywords or functions.
