---
title: Quiz — Interpolazione di hash
---

{% include menu.html %}

Guarda il seguente hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Completa i programmi qui sotto in modo che stampino l'output che chiede ogni compito.

## 1

Stampa il nome della lettera greca `β` usando l'hash. Scrivi la chiave senza virgolette intorno.

{:.quiz-code}
&lt;β&gt; | say &quot;La lettera β si chiama %letters␣␣.&quot;;

## 2

Stampa il nome della lettera greca `β` usando l'hash. Scrivi la chiave tra virgolette singole.

{:.quiz-code}
{&apos;β&apos;} | say &quot;La lettera β si chiama %letters␣␣␣␣.&quot;;

## 3

Stampa le lettere e i loro nomi come una tabella.

{:.quiz-code}
letters{ | say &quot;Ecco alcune lettere greche:\n%␣␣␣␣␣}\netc.&quot;; | Nota che l'output potrebbe non essere ordinato.

In questo caso, l'output può essere così:

    Ecco alcune lettere greche:
    α	Alpha
    β	Beta
    γ	Gamma
    ecc.

{% include quiz.html %}

{% include nav.html %}
