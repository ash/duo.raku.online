---
title: 'Solution: Die Größe klassifizieren'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Den Quellcode finden Sie in der Datei [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Ausgabe

```
small
medium
large
```

## Kommentare

1. Alle drei Kandidaten nehmen ein `Int`. Ohne die `where`-Klauseln kollidieren sie. Raku kann nicht zwischen ihnen wählen. Die Bedingungen bei den ersten beiden machen sie verschieden. Der dritte Kandidat nimmt alle anderen Zahlen.

1. Die `where`-Klauseln prüfen `$n.abs`. Also zählt nur die Größe der Zahl, nicht ihr Vorzeichen. `size(7)` passt zum ersten Kandidaten und ergibt `small`. Bei `size(-250)` ist der Absolutwert `250`. Er erfüllt keine der beiden Bedingungen. Also geht der Aufruf an den letzten Kandidaten, der alles andere nimmt. Das Ergebnis ist `large`.

1. Raku prüft die Kandidaten vom spezifischsten zum allgemeinsten. Hier ist das genau ihre Reihenfolge im Code.

{% include nav.html %}
