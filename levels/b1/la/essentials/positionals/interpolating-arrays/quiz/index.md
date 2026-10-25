---
title: Quiz — Interpolando array
---

{% include menu.html %}

Habes array sequens:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Comple programmata infra, ut output quod petimus imprimant.

## 1

Imprime tertium elementum, quod indicem `2` habet.

{:.quiz-code}
[2] | dic "Tertium elementum est @arr␣␣";

## 2

Imprime omnia elementa, nec indicem cuiusque scribe.

{:.quiz-code}
arr[] | dic "Haec series continet: @␣␣␣␣."; | Output est "Haec series continet: 10 9 8 3 2 1."

## 3

Imprime magnitudinem array ope methodi `elems`.

{:.quiz-code}
{@arr.elems} | dic "Sunt ␣␣␣␣␣␣␣␣ elementa."; | Braces necessariae sunt ad Raku codicem in Raku string inserendum.

{% include quiz.html %}

{% include nav.html %}
