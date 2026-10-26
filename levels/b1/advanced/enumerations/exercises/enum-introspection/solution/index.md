---
title: The solution of ’Count and total‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The constants are written as pairs. So each one gets the value we chose, not the automatic numbers from zero.

1. `.enums` returns a map, where each constant name points to its value. `.elems` counts the entries, and there are four coins.

1. `.values` gives only the numbers behind the names. Then `.sum` adds them together: `1 + 5 + 10 + 25` is `41`.

{% include nav.html %}
