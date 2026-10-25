---
title: Quiz — Interpolazione di hash
---

{% include menu.html %}

Ecco un hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Completa i programmi qui sotto. Ognuno deve stampare l'output del suo compito.

## 1

Stampa il nome della lettera greca `β`. Prendilo dall'hash. Non mettere virgolette intorno alla chiave.

{:.quiz-code}
&lt;β&gt; | say &quot;La lettera β si chiama %letters␣␣.&quot;;

## 2

Stampa il nome della lettera greca `β`. Prendilo dall'hash. Metti la chiave tra virgolette singole.

{:.quiz-code}
{&apos;β&apos;} | say &quot;La lettera β si chiama %letters␣␣␣␣.&quot;;

## 3

Stampa una tabella con le lettere e i loro nomi.

{:.quiz-code}
letters{ | say &quot;Ecco alcune lettere greche:\n%␣␣␣␣␣}\netc.&quot;; | Nota che l'output potrebbe non essere ordinato.

Il programma può stampare questo:

    Ecco alcune lettere greche:
    α	Alpha
    β	Beta
    γ	Gamma
    ecc.

{% include quiz.html %}

{% include nav.html %}
