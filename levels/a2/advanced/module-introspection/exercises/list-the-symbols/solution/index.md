---
title: The solution of ’List the symbols‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

The program, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 You can find both source files in the [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols) directory.

## Output

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Comments

1. `Circle::` is the package of the module. `.keys` lists the names in it. Each name has its sigil.

1. `.elems` counts these names. The module has two `our` variables. So the count is `2`.

1. `.keys` does not give the names in a fixed order. So we use `.sort`. It puts the names in alphabetical order. Now the result is always the same: `($pi $tau)`. Without sorting, the order of the two names can change. It can be different each time the program runs.

{% include nav.html %}
