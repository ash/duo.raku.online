---
title: The solution of ’Describe a variable‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 You can find the source code in the file [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Output

```
Str
Scalar
$lang
```

## Comments

1. `.^name` returns the type of the value in the container. This type is `Str`.

1. `.VAR` returns the container behind the variable. `.^name` on the container returns `Scalar`. This is the type of the container itself.

1. `.VAR.name` returns the name of the variable with its sigil: `$lang`. Note that this is the method `name`. It is not the meta-method `^name` from the first two lines.

{% include nav.html %}
