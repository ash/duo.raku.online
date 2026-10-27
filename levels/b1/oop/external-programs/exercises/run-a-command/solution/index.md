---
title: The solution of ’Run a command‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `run` starts `echo` directly and passes each string as a separate argument. Without `:out`, the program's output goes straight to the screen.

1. The argument reaches `echo` exactly as written. `$HOME` is printed as it is, not replaced with your home directory. This is because there is no shell to replace it. That is why `run` is the safe default. The same command given to `shell` could behave very differently.

1. To really print the home directory, let a shell replace the variable. `shell 'echo home: $HOME'` prints something like `home: /home/anna`. Keep the single quotes on the Raku side too. A double-quoted `"$HOME"` would cause a problem. Raku itself would try to insert a variable named `$HOME` into the string. This would happen before `echo` even runs.

{% include nav.html %}
