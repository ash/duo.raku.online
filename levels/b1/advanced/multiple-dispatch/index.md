---
title: Multiple dispatch
---

{% include menu.html %}

In the Essentials part, you met [_multi-functions_](/essentials/more-on-functions/multi-functions). These are several subroutines with the same name. Raku chooses the right one by looking at the types of the arguments. This is called _multiple dispatch_.

So far, Raku chose by the _type_ of the arguments. A `where` clause lets you go further and also choose by the _value_. You write it after a parameter, and it holds a condition. The argument must meet this condition, or that candidate is not chosen:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Every call runs the candidate with a condition that is true for the given value:

```
-5 is negative
0 is zero
7 is positive
```

If you look only at types, all three candidates have the same signature: one `Int`. So without the `where` clauses, they would clash. The conditions make them different from each other.

## A base case for recursion

`where` is often used for the stopping point of a recursion. This point gets its own candidate. Here is the factorial again, now as two multi-subs:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

The first candidate handles the base case, when `$n` is `1` or less. It simply returns `1`. Every other value goes to the second candidate. It calls `fact` again with a smaller number. There is no `if` inside the function. The dispatcher chooses between the base case and the recursive step.

{% include nav.html %}
