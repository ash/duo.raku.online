---
title: The solution of ’A package‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The variable and the subroutine both have `our`. So both are part of the namespace `Temperature`. Code outside the package can get to them.

1. You get the variable with `$Temperature::freezing`. First comes the sigil, then the package name, then the variable name. You call the subroutine as `Temperature::fahrenheit(100)`. For `100`, it calculates `100 * 9/5 + 32`. The result is `212`.

1. A simple `package` gives only the namespace. For a library, we would use `module` instead. You can use a library again and again. Later, with objects, we would use a `class`. But the namespace works the same way in all these cases.

{% include nav.html %}
