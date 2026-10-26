---
title: The solution of ’Look up a symbol‘
---

{% include menu.html %}

Here is one possible solution.

## Code

The program, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 You can find both source files in the [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol) directory.

## Output

```console
$ raku -I. lookup.raku
3.14
```

## Comments

1. `Circle::` is the stash of the module. Using a name as a key, like `Circle::{'$pi'}`, gives the value stored under it. The key must include the sigil, just like the listed names.

1. This gives the same value as the qualified `$Circle::pi`. But here the name is an ordinary string. So it can be built at run time. It does not have to be written out in the source code.

{% include nav.html %}
