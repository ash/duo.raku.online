---
title: The solution of ’A diamond of classes‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `D` inherits from two parents at once: `class D is B is C` lists each of them with its own `is`. This is multiple inheritance. Together, `A`, `B`, `C` and `D` form a *diamond*. There are two paths from `D` up to the shared ancestor `A`.

1. `.^mro` flattens the diamond into one straight search order. `D` comes first, then its parents `B` and `C` in the order you wrote them. Then comes the shared `A`, and finally `Any` and `Mu`.

1. Both `B` and `C` lead to `A`. Still, the type `A` appears only **once**, and only after both of them. That is the point of a method resolution order. Every type is visited exactly once. And a parent never comes before a child that inherits from it. So Raku always finds a method in `B` before the one it overrides in `A`.

{% include nav.html %}
