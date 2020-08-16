# last_python

A simple sqlite3 command that points to the ipython sqlite3 history db.
This way you can quickly get the last n commands you wrote in ipython.

## Usage

Calling the shell script will return the last command

```
$ ./last_python.sh
print('hello world')
```

You can specify a number to give the n-th last

```
$ ./last_python.sh 2
print('hello wold')
```

You can call the `last_python_find` to fzf through all commands in your history. [FZF](https://github.com/junegunn/fzf) is a requirement for this one.

```
$ ./last_python.sh
print('hello world')
```
