---
title: Quiz — Interpolando array
---

{% include menu.html %}

Hic est array:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Comple programmata infra. Output quod petimus imprimere debent.

## 1

Imprime tertium elementum. Index eius est `2`.

{:.quiz-code}
[2] | dic "Tertium elementum est @arr␣␣";

## 2

Imprime omnia elementa. Noli indicem pro quoque eorum scribere.

{:.quiz-code}
arr[] | dic "Haec series continet: @␣␣␣␣."; | Output est "Haec series continet: 10 9 8 3 2 1."

## 3

Imprime magnitudinem array. Ad hoc methodum `elems` voca.

{:.quiz-code}
{@arr.elems} | dic "Sunt ␣␣␣␣␣␣␣␣ elementa."; | Braces necessariae sunt ad Raku codicem in Raku string inserendum.

{% include quiz.html %}

{% include nav.html %}
