---
title: The solution of ’The method resolution order‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class A {
}

class B is A {
}

class C is B {
}

say C.^mro.map(*.^name);
```

🦋 You can find the source code in the file [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Output

```
(C B A Any Mu)
```

## Comments

1. `.^mro` returns a chain of types. Raku searches this chain to find a method.

1. The chain follows the line of inheritance, one step at a time. First comes `C`. Then comes its parent, `B`. Then comes `A`, the parent of `B`. At the end come `Any` and `Mu`. Every type ends with them. With more levels of classes, the list is just longer.

{% include nav.html %}
