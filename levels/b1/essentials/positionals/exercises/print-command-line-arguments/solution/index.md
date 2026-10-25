---
title: Solution of ‘Print command line arguments’
---

{% include menu.html %}

The program gets the command-line arguments in the array `@*ARGS`. So we need to loop over the elements of this array.

## Code

```raku
.say for @*ARGS;
```

🦋 Find the program in the file [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Output

Run the program and check that it prints each argument on its own line:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
