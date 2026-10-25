---
title: Quiz — Interpolazione degli array
---

{% include menu.html %}

Hai il seguente array:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Completa i programmi qui sotto in modo che stampino l'output che chiediamo.

## 1

Stampa il terzo elemento, cioè l'elemento con indice `2`.

{:.quiz-code}
[2] | say &quot;Il terzo elemento è @arr␣␣&quot;;

## 2

Stampa tutti gli elementi, senza scrivere l'indice di ognuno.

{:.quiz-code}
arr[] | say &quot;Questo array contiene: @␣␣␣␣.&quot;; | L'output è ”Questo array contiene: 10 9 8 3 2 1.“

## 3

Stampa la dimensione dell'array con l'aiuto del metodo `elems`.

{:.quiz-code}
{@arr.elems} | say &quot;Ci sono ␣␣␣␣␣␣␣␣ elementi.&quot;; | Sono necessarie le parentesi graffe per incorporare il codice Raku in una stringa Raku.

{% include quiz.html %}

{% include nav.html %}
