---
title: Quiz — Interpolatie van hashes
---

{% include menu.html %}

Kijk naar de volgende hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Maak de programma's hieronder af, zodat ze de uitvoer printen die elke opdracht vraagt.

## 1

Print de naam van de Griekse letter `β` met behulp van de hash. Schrijf de sleutel zonder aanhalingstekens eromheen.

{:.quiz-code}
&lt;β&gt; | say &quot;De letter β heet %letters␣␣.&quot;;

## 2

Print de naam van de Griekse letter `β` met behulp van de hash. Schrijf de sleutel tussen enkele aanhalingstekens.

{:.quiz-code}
{&apos;β&apos;} | say &quot;De letter β heet %letters␣␣␣␣.&quot;;

## 3

Print de letters en hun namen als een tabel.

{:.quiz-code}
letters{ | say &quot;Hier zijn enkele Griekse letters:\n%␣␣␣␣␣}\netc.&quot;; | Let op dat de uitvoer mogelijk niet gesorteerd is.

In dit geval kan de uitvoer er zo uitzien:

    Hier zijn enkele Griekse letters:
    α	Alpha
    β	Beta
    γ	Gamma
    enz.

{% include quiz.html %}

{% include nav.html %}
