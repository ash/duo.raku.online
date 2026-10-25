---
title: Viktorīna — Masīvu interpolācija
---

{% include menu.html %}

Šeit ir masīvs:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Pabeidziet programmas zemāk. Tām jāizdrukā prasītā izvade.

## 1

Izdrukājiet trešo elementu. Tā indekss ir `2`.

{:.quiz-code}
[2] | say &quot;Trešais elements ir @arr␣␣&quot;;

## 2

Izdrukājiet visus elementus. Nerakstiet indeksu katram no tiem.

{:.quiz-code}
arr[] | say &quot;Šis masīvs satur: @␣␣␣␣.&quot;; | Izvade ir ”Šis masīvs satur: 10 9 8 3 2 1.“

## 3

Izdrukājiet masīva izmēru. Lai to izdarītu, izsauciet `elems` metodi.

{:.quiz-code}
{@arr.elems} | say &quot;Masīvā ir ␣␣␣␣␣␣␣␣ elementi.&quot;; | Liekās iekavas nepieciešamas, lai ievietotu Raku kodu Raku virknē.

{% include quiz.html %}

{% include nav.html %}
