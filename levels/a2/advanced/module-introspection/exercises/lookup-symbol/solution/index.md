---
title: The solution of ’Look up a symbol‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `Circle::` is the stash of the module. You use a name as a key: `Circle::{'$pi'}`. This gives the value for that name. The key must have the sigil. The names in the list have it too.

1. You get the same value as with the full name `$Circle::pi`. But here, the name is a normal string. So the program can make the name while it runs. You do not have to write it in the source code.

{% include nav.html %}
