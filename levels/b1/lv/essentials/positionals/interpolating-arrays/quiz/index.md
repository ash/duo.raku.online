---
title: Viktorīna — Masīvu interpolācija
---

{% include menu.html %}

Jums ir šāds masīvs:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Pabeidziet zemāk esošās programmas, lai tās izdrukātu prasīto izvadi.

## 1

Izdrukājiet trešo elementu, tas ir, elementu ar indeksu `2`.

{:.quiz-code}
[2] | say &quot;Trešais elements ir @arr␣␣&quot;;

## 2

Izdrukājiet visus elementus, nerakstot katra elementa indeksu.

{:.quiz-code}
arr[] | say &quot;Šis masīvs satur: @␣␣␣␣.&quot;; | Izvade ir ”Šis masīvs satur: 10 9 8 3 2 1.“

## 3

Izdrukājiet masīva izmēru ar `elems` metodes palīdzību.

{:.quiz-code}
{@arr.elems} | say &quot;Masīvā ir ␣␣␣␣␣␣␣␣ elementi.&quot;; | Liekās iekavas nepieciešamas, lai ievietotu Raku kodu Raku virknē.

{% include quiz.html %}

{% include nav.html %}
