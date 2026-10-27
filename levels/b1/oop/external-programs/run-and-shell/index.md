---
title: run and shell
---

{% include menu.html %}

There are two ways to start an external program. The `run` function takes the command and its arguments as **separate** values. It runs the program directly, without a shell:

```raku
run 'echo', 'hello';
```

This runs the `echo` program with the single argument `hello`, so it prints `hello`. The arguments are passed separately, so a shell cannot misread spaces or special characters. That is why `run` is the safe default.

The `shell` function works differently. It passes a **single string** to the system shell, which reads and runs it. This lets you use shell features such as pipes and redirection:

```raku
shell 'echo hello | tr a-z A-Z';
```

Here, the shell runs `echo` and sends its output through `tr` with a pipe. Then it prints `HELLO`. This is convenient, but you must be careful. The shell itself decides what the string means. So it is dangerous to build a `shell` command from input you do not trust. Use `run` unless you really need shell features.

Both functions return a `Proc` object, which describes how the program finished. By default, the started program shares the output of your program. So what it prints appears on the screen. To capture that output instead, you have to ask for it. This is the subject of the next topic.

{% include nav.html %}
