---
title: 'Solution: Akronym'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Du findest den Quellcode in der Datei [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Ausgabe

```
HTML
```

## Kommentare

1. `$phrase.words` liefert die Liste der Wörter. Die Schleife nimmt mit `substr(0, 1)` das erste Zeichen von jedem Wort. Sie hängt dieses Zeichen an das Ende von `$acronym` an.

1. Am Ende sind alle ersten Buchstaben in `$acronym`. Dann macht `uc` aus dem Ergebnis Großbuchstaben: `HTML`.

{% include nav.html %}
