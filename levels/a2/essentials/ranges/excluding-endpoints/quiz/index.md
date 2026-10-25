---
title: Quiz — Creating ranges
---

{% include menu.html %}

Choose the lines that are correct Raku code.

{:.quiz}
1 | 1..10
1 | 1 .. 10
1 | -1..20
0 | -1 . . 20
1 | 6^..10
0 | 7^.. ^10
1 | 10..^20
1 | 30^..^30
0 | 30 ^ .. ^ 30
1 | 30 ^..^ 30
1 | ^40
1 | ^ 50 | Fine, but looks a bit weird.
0 | 60^ | Not a valid syntax.

## Comments

Each range operator is one group of characters, with no spaces inside. This is true for other Raku operators too. So you cannot put a space between the parts of an operator.

{% include quiz.html %}

{% include nav.html %}
