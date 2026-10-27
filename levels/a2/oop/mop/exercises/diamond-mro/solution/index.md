---
title: The solution of ’A diamond of classes‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class A {
}

class B is A {
}

class C is A {
}

class D is B is C {
}

say D.^mro.map(*.^name);
```

🦋 You can find the source code in the file [diamond-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/diamond-mro.raku).

## Output

```
(D B C A Any Mu)
```

## Comments

1. `D` inherits from two parents at the same time. `class D is B is C` has an `is` for each parent. This is called multiple inheritance. The classes `A`, `B`, `C` and `D` make a *diamond*. There are two paths from `D` up to `A`. `A` is the parent of both `B` and `C`.

1. `.^mro` turns the diamond into one flat line. Raku searches in this order. `D` comes first. Then come its parents, `B` and `C`. They come in the order of the code. Then comes `A`, the shared parent. At the end come `Any` and `Mu`.

1. Both `B` and `C` lead to `A`. But the type `A` is in the list only **once**. And it comes after both of them. This is the goal of a method resolution order. Raku visits every type exactly once. A parent never comes before its child. So Raku always finds a method in `B` first. It finds it before the method in `A` that it overrides.

{% include nav.html %}
