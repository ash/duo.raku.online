---
title: Solution of ‘Print command line arguments’
---

{% include menu.html %}

The program gets the arguments from the command line. They are in the array `@*ARGS`. So we need a loop over its elements.

## Code

```raku
.say for @*ARGS;
```

🦋 Find the program in the file [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Output

Run the program. Check that it prints the arguments, one on each line:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
