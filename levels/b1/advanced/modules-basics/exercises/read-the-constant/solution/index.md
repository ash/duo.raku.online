---
title: The solution of ’Read the constant‘
---

{% include menu.html %}

Here is one possible solution.

## Code

The program, `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 You can find both source files in the [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant) directory.

## Output

```console
$ raku -I. read-pi.raku
3.14
```

## Comments

1. `need Circle` loads the module, but it does not import any names. So Raku would not recognise `$pi` on its own.

1. The program reaches the `our` variable through the name of the module, as `$Circle::pi`.

{% include nav.html %}
