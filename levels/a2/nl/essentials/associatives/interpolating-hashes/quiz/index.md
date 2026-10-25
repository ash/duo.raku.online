---
title: Quiz — Interpolatie van hashes
---

{% include menu.html %}

Hier is een hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Maak de programma's hieronder af. Elk programma moet de uitvoer uit zijn opdracht printen.

## 1

Print de naam van de Griekse letter `β`. Haal hem uit de hash. Zet geen aanhalingstekens om de sleutel.

{:.quiz-code}
&lt;β&gt; | say &quot;De letter β heet %letters␣␣.&quot;;

## 2

Print de naam van de Griekse letter `β`. Haal hem uit de hash. Zet de sleutel tussen enkele aanhalingstekens.

{:.quiz-code}
{&apos;β&apos;} | say &quot;De letter β heet %letters␣␣␣␣.&quot;;

## 3

Print een tabel met de letters en hun namen.

{:.quiz-code}
letters{ | say &quot;Hier zijn enkele Griekse letters:\n%␣␣␣␣␣}\netc.&quot;; | Let op dat de uitvoer mogelijk niet gesorteerd is.

Het programma kan dit printen:

    Hier zijn enkele Griekse letters:
    α	Alpha
    β	Beta
    γ	Gamma
    enz.

{% include quiz.html %}

{% include nav.html %}
