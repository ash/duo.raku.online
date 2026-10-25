---
title: Quiz — Interpolatie van arrays
---

{% include menu.html %}

Je hebt de volgende array:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Maak de programma's hieronder af, zodat ze de output printen die we vragen.

## 1

Print het derde element, dat is het item met index `2`.

{:.quiz-code}
[2] | say &quot;Het derde element is @arr␣␣&quot;;

## 2

Print alle elementen, zonder de index van elk element te schrijven.

{:.quiz-code}
arr[] | say &quot;Deze array bevat: @␣␣␣␣.&quot;; | De output is ”Deze array bevat: 10 9 8 3 2 1.“

## 3

Print de grootte van de array met behulp van de `elems`-methode.

{:.quiz-code}
{@arr.elems} | say &quot;Er zijn ␣␣␣␣␣␣␣␣ elementen.&quot;; | Krulhaken zijn vereist om Raku code in een Raku string in te voegen.

{% include quiz.html %}

{% include nav.html %}
