---
title: The solution of ’Run a command‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
run 'echo', 'home:', '$HOME';
```

🦋 You can find the source code in the file [run-a-command.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/run-a-command.raku).

## Output

```
home: $HOME
```

## Comments

1. `run` starts `echo` directly. It passes each string as a separate argument. There is no `:out`. So the output of the program goes straight to the screen.

1. The argument comes to `echo` exactly as you wrote it. So `$HOME` is printed as it is. It is not replaced with your home directory. This is because there is no shell. A shell would replace it. This is why `run` is the safe default choice. With `shell`, the same command can work very differently.

1. Do you really want to print the home directory? Then let a shell replace the variable. `shell 'echo home: $HOME'` prints something like `home: /home/anna`. Also keep the single quotes in the Raku code. With double quotes, `"$HOME"`, there is a problem. Raku itself tries to insert its own variable `$HOME` into the string. This happens before `echo` even runs.

{% include nav.html %}
