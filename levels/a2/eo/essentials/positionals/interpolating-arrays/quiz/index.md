---
title: Kvizo — Interpolante tabelojn
---

{% include menu.html %}

Jen tabelo:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Finu la programojn sube. Ili devas presi la eligon, kiun ni petas.

## 1

Presu la trian elementon. Ĝia indekso estas `2`.

{:.quiz-code}
[2] | say &quot;La tria elemento estas @arr␣␣&quot;;

## 2

Presu ĉiujn elementojn. Ne skribu indekson por ĉiu el ili.

{:.quiz-code}
arr[] | say &quot;Ĉi tiu tabelo enhavas: @␣␣␣␣.&quot;; | La eliro estas ”Ĉi tiu tabelo enhavas: 10 9 8 3 2 1.“

## 3

Presu la grandecon de la tabelo. Por tio voku la metodon `elems`.

{:.quiz-code}
{@arr.elems} | say &quot;Estas ␣␣␣␣␣␣␣␣ elementoj.&quot;; | Kuraj krampoj necesas por enkorpigi Raku-kodon en Raku-ŝnuron.

{% include quiz.html %}

{% include nav.html %}
