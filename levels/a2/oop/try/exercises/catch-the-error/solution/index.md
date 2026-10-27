---
title: The solution of ’Catch the error‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 You can find the source code in the file [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Output

```
42
False
broken
```

## Comments

1. Here, the block runs without an error. Then `try` simply gives the value of the block. So `$ok` holds `42`.

1. The `die` in the second block throws an exception. So this block gives an undefined value. `$bad.defined` is `False`.

1. Raku keeps the caught exception in the special variable `$!`. `$!.message` returns the text of the exception, `broken`.

{% include nav.html %}
