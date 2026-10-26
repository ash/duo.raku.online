---
title: The solution of ’A package‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 You can find the source code in the file [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Output

```
0
212
```

## Comments

1. Both the variable and the subroutine are declared with `our`. So both become part of the `Temperature` namespace, and you can reach them from outside.

1. The variable is reached as `$Temperature::freezing`: the sigil, the package name, then the variable name. The subroutine is called as `Temperature::fahrenheit(100)`. Converting `100` gives `100 * 9/5 + 32`, which is `212`.

1. A plain `package` gives you just the namespace. For a reusable library, we would use `module` instead. When we work with objects, we would use a `class`. But the namespace works in the same way in each case.

{% include nav.html %}
