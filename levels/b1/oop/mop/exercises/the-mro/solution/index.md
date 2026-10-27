---
title: The solution of ’The method resolution order‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `.^mro` returns the chain of types that Raku searches when it looks for a method.

1. The chain follows the inheritance line one step at a time. First comes `C`, then its parent `B`, and then `B`’s parent `A`. At the end come `Any` and `Mu`, because every type ends with them. With a deeper hierarchy, the list is simply longer.

{% include nav.html %}
