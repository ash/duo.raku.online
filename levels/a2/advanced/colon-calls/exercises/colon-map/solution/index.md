---
title: The solution of ’A colon map‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say (1..10).map(* * 2).grep: * > 10;
```

🦋 You can find the source code in the file [colon-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-map.raku).

## Output

```
(12 14 16 18 20)
```

## Comments

1. Only `grep` can use the colon form. It is the last call in the chain. The colon makes `* > 10` its argument. This is exactly like `grep(* > 10)`. We still need to print the result. So now we use `say` as a function, not as a method.

1. The `map` call must keep its parentheses. If you write `.map: * * 2`, there is a problem. The colon takes `.grep(* > 10)` too. It becomes part of the arguments of `map`. Then the chain breaks.

{% include nav.html %}
