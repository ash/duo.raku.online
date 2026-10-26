---
title: The solution of ’A colon map‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The colon form is possible only for `grep`, the last call in the chain. The colon makes `* > 10` its argument, exactly like `grep(* > 10)`. We still need to print the result. So now `say` is used as a function, not as a method.

1. The `map` call must keep its parentheses. Suppose you wrote `.map: * * 2` instead. The colon would then also take `.grep(* > 10)` as an argument of `map`. So the chain would break.

{% include nav.html %}
