---
title: 'Solution: Mengenrabatt'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
multi sub price(Int $qty where $qty >= 10) { say 'bulk price' }
multi sub price(Int $qty)                  { say 'normal price' }

price(3);
price(25);
```

🦋 Den Quellcode finden Sie in der Datei [bulk-pricing.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/bulk-pricing.raku).

## Ausgabe

```
normal price
bulk price
```

## Kommentare

1. Der erste Kandidat hat eine `where`-Klausel. Sie nimmt nur Mengen von 10 oder mehr an. Also geht der Aufruf `price(25)` an diesen Kandidaten.

1. Der zweite Kandidat hat keine Bedingung. Er nimmt alle anderen Aufrufe. Also geht `price(3)` dorthin.

{% include nav.html %}
