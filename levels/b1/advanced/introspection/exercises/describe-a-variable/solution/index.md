---
title: The solution of ’Describe a variable‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `.^name` gives the type of the value in the container, which is `Str`.

1. `.VAR` gives the container behind the variable. Then `.^name` on it returns `Scalar`, which is the type of the container itself.

1. `.VAR.name` returns the name of the variable, `$lang`, with its sigil. Note that this is the `name` method. It is not the `^name` meta-method that we used on the first two lines.

{% include nav.html %}
