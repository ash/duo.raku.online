---
title: Quiz — Interpolazione degli array
---

{% include menu.html %}

Ecco un array:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Finisci i programmi qui sotto. Devono stampare l'output che chiediamo.

## 1

Stampa il terzo elemento. Il suo indice è `2`.

{:.quiz-code}
[2] | say &quot;Il terzo elemento è @arr␣␣&quot;;

## 2

Stampa tutti gli elementi. Non scrivere un indice per ognuno.

{:.quiz-code}
arr[] | say &quot;Questo array contiene: @␣␣␣␣.&quot;; | L'output è ”Questo array contiene: 10 9 8 3 2 1.“

## 3

Stampa la dimensione dell'array. Per questo, chiama il metodo `elems`.

{:.quiz-code}
{@arr.elems} | say &quot;Ci sono ␣␣␣␣␣␣␣␣ elementi.&quot;; | Sono necessarie le parentesi graffe per incorporare il codice Raku in una stringa Raku.

{% include quiz.html %}

{% include nav.html %}
