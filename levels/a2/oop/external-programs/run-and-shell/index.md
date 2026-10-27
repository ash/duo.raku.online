---
title: run and shell
---

{% include menu.html %}

There are two ways to start an external program. The first one is the `run` function. It does not use a shell. A shell is a program that reads commands and runs them. `run` takes the command and its arguments as **separate** values. Arguments are the values that you give to the command. Then `run` starts the program directly:

```raku
run 'echo', 'hello';
```

This runs the `echo` program with one argument, `hello`. The program prints `hello`. The arguments come to the program separately. So no shell can get spaces or special characters wrong. That is why `run` is the safe default choice.

The `shell` function works in another way. It gives a **single string** to the shell of the system. The shell reads the string and runs it. So you can use shell features, like redirection and pipes. Redirection sends output to another place, for example to a file. A pipe sends the output of one command to the next one:

```raku
shell 'echo hello | tr a-z A-Z';
```

Here, the shell runs `echo`. A pipe sends its output to `tr`. Then the shell prints `HELLO`. This is easy, but there is a risk. The shell itself reads the string and finds its parts. Maybe the string comes from input that you do not trust. Then a `shell` command is dangerous. Use `run`, unless you really need shell features.

Both functions return a `Proc` object. It tells you how the program ended. Normally, the started program uses the same output as your program. So you see its output on the screen. You can also capture this output. For this, you must ask for it. The next topic shows how.

{% include nav.html %}
