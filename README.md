import
======

Type:

```bash
$ import requests
```

in your terminal and it will run Python with the specified import as though you did this:

```bash
$ python
Python 2.7.10 (default, May 23 2015, 09:40:32) [MSC v.1500 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> import requests
>>>
```


Why?
----

Sometimes I get ahead of myself while typing into the terminal.
This lets me continue working despite my frequent mistake. Importing
a module is usually the first thing I do when running Python, so this
script effectively turns my bad habit into one that saves time.


Uses
----

- Sanity check:

  ```bash
  $ import os
  >>> os.path.join('tests', 'test.py')
  'tests\\test.py'
  ```

- Checking function output without visiting Google or Stack Overflow:

  ```bash
  $ import urlparse
  >>> urlparse.urlsplit('http://github.com/joeyespo/import#readme')
  SplitResult(scheme='http', netloc='github.com', path='/joeyespo/import', query='', fragment='readme')
  ```

- Finding a system function:

  ```bash
  $ import sys
  >>> sys.environ
  Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
  AttributeError: 'module' object has no attribute 'environ'
  >>> import os
  >>> os.environ
  {...}
  ```

- Verifying a module exists:

  ```bash
  $ import requests
  Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
      import requests
  ImportError: No module named requests
  >>> exit()
  $ pip install requests

  ```

- Diving into Python for higher-level checks:

  ```bash
  $ import requests
  >>> requests.get('https://api.github.com/repos/joeyespo/grip/issues').content
  '{...}'

  ```


TODO
----

- [ ] Port this to Bash and add an `import.sh` file to this project
- [ ] Write an 'Installation' section
- [ ] More languages?


Contributing
------------

1. Check the open issues or open a new issue to start a discussion around
   your feature idea or the bug you found
2. Fork the repository, make your changes
3. Send a pull request

If your PR has been waiting a while, feel free to [ping me on Twitter](http://twitter.com/joeyespo).
