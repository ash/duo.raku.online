---
title: Multiple dispatch
---

{% include menu.html %}

In the Essentials part, you learned about [_multi-functions_](/essentials/more-on-functions/multi-functions). These are several subroutines with the same name. Raku looks at the types of the arguments. Then it chooses the right subroutine. This is called _multiple dispatch_.

Until now, Raku chose by the _type_ of the arguments. With a `where` clause, you can do more. Raku can also choose by the _value_. You write `where` after a parameter. It has a condition. Each variant of the function is called a candidate. Raku chooses a candidate only when its condition is true for the argument:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Each call goes to the candidate with a true condition for that value:

```
-5 is negative
0 is zero
7 is positive
```

Look at the types. All three candidates have the same signature: one `Int`. Without the `where` clauses, they clash. Raku cannot choose between them. The conditions make them different.

## Stopping a recursion

People often use `where` with recursion. In a recursion, a function calls itself. It must stop at some point. You can put this stop point into a separate candidate. Here is the factorial again. Now it has two multi-subs:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

The first candidate is the base case. Here, the recursion stops. In this case, `$n` is `1` or less. This candidate simply returns `1`. All other values go to the second candidate. It calls `fact` again with a smaller number. There is no `if` inside the function. The dispatcher chooses between the base case and the recursive step. The dispatcher is the part of Raku that picks a candidate.

{% include nav.html %}
