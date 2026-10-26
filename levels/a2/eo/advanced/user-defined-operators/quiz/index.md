---
title: Kvizo — Difini operatoron
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
sub infix:<times>($a, $b) { $a * $b }

say 6 times 7;
```

{:.quiz}
1 | 42
0 | 67
0 | times
0 | eraron

{% include quiz.html %}

<div class="extended-explanation">

`infix:<times>` difinas novan operatoron. Vi skribas ĝin inter ĝiaj du operandoj. Ĝia korpo multiplikas ilin. Do `6 times 7` donas `42`. Operatoro estas nur subrutino kun speciala nomo.

</div>

{% include nav.html %}
