---
title: 'Solution: Akronym'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `$phrase.words` gibt die Liste der Wörter zurück. Für jedes Wort nimmt die Schleife das erste Zeichen mit `substr(0, 1)`. Dann hängt sie dieses Zeichen an das Ende von `$acronym` an.

1. Wenn alle ersten Buchstaben gesammelt sind, wandelt `uc` das Ergebnis in Großbuchstaben um: `HTML`.

{% include nav.html %}
