---
title: Comparing numbers
---

{% include menu.html %}

Use these operators to compare two numbers. Do you know other programming languages? Then they are all very clear to you.

`==` | Equal
`!=` | Not equal
`<` | Less than
`<=` | Less than or equal
`>` | Greater than
`>=` | Greater than or equal

## Approximately-equal

Raku has the standard operators. It also adds one more: `=~=`. This operator checks if two numbers are almost equal. The result is `True` if the numbers are close. Raku compares the difference with the size of the numbers. This gives the relative difference. It must not be bigger than the built-in value `$*TOLERANCE`. This value is `1e-15`.

## Unicode versions

Some of these operators also have a Unicode form:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Examples

Here are some examples of comparing numbers:

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

Note that `1.000000000000000000000001` is a `Rat` number. The expression compares it with a very close number, `1.000000000000000000000002`. With `Rat` numbers, you do not lose precision here. Raku keeps all the digits. The last example has `2e17`. It uses `Num` numbers. Their precision is limited. They cannot keep all the digits.

{% include nav.html %}
