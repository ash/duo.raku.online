---
title: Comparing numbers
---

{% include menu.html %}

To compare two numbers, use the following operators. If you know other programming languages, they are all quite clear.

`==` | Equal
`!=` | Not equal
`<` | Less than
`<=` | Less than or equal
`>` | Greater than
`>=` | Greater than or equal

## Approximately-equal

Besides the standard operators, Raku adds one more: the approximately-equal operator `=~=`. It checks if two numbers are almost equal. The result is `True` if the two numbers are relatively close to each other. The relative difference must not be bigger than the built-in value `$*TOLERANCE`. This value is `1e-15`.

## Unicode versions

Some of the operators above also have Unicode versions:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Examples

Here are a few examples of comparing numbers with these operators:

```raku
say 10 == 10; # True
say 10 != 10; # False

say 15 < 10;  # False
say 10 <= 10; # True
say 16 > 10;  # True
say 10 >= 14; # False

say 1.000000000000000000000001 =~= 1.000000000000000000000002; # True
say 2e17 + 1 =~= 2e17 + 100; # True
```

Note that `1.000000000000000000000001` is a `Rat` number. Because of this, the comparison with the close number `1.000000000000000000000002` keeps full precision. The last example, with `2e17`, works with `Num` numbers. Their precision is limited.

{% include nav.html %}
