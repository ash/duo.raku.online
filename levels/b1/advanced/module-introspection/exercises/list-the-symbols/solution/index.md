---
title: The solution of ’List the symbols‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `Circle::` is the package of the module. `.keys` lists the names that it contains, each with its sigil.

1. `.elems` counts these names. The module defines two `our` variables, so the count is `2`.

1. `.keys` does not promise any particular order. So we use `.sort`, which gives the same alphabetical result every time: `($pi $tau)`. Without sorting, the order of the two names could change between runs.

{% include nav.html %}
