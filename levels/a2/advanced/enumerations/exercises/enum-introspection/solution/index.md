---
title: The solution of ’Count and total‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 You can find the source code in the file [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Output

```
4
41
```

## Comments

1. We write the constants as pairs. So we choose the value of each constant. Raku does not number them from zero.

1. `.enums` returns a map. A map is like a hash. In it, each constant name has its value. `.elems` counts the entries. There are four coins.

1. `.values` takes only the numbers behind the names. `.sum` adds them up: `1 + 5 + 10 + 25` is `41`.

{% include nav.html %}
