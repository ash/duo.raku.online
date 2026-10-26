---
title: 'Solution: Die Größe klassifizieren'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Alle drei Kandidaten nehmen ein einzelnes `Int`, also würden sie ohne die `where`-Klauseln kollidieren. Die Bedingungen bei den ersten beiden machen sie verschieden. Der dritte fängt alles andere ab.

1. Die `where`-Klauseln prüfen `$n.abs`. Also entscheidet nur die Größe der Zahl über das Ergebnis, und das Vorzeichen wird ignoriert. `size(7)` passt zum ersten Kandidaten (`small`). Bei `size(-250)` ist der Absolutwert `250`. Er erfüllt keine der beiden Bedingungen, und der Aufruf geht weiter an den Auffangfall (`large`).

1. Die Kandidaten werden vom spezifischsten zum allgemeinsten geprüft. Hier ist das genau die Reihenfolge, in der sie geschrieben sind.

{% include nav.html %}
