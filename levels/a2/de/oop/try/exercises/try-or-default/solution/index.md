---
title: 'Lösung: Try oder Standardwert'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Du findest den Quellcode in der Datei [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Ausgabe

```
default
```

## Kommentare

1. Der `try`-Block schlägt fehl. Also ist sein Wert undefiniert.

1. Also gibt der Defined-or-Operator `//` seine rechte Seite zurück. Das ist `'default'`. So können Sie nach einem Fehlschlag sauber weitermachen. Sie brauchen nur eine Zeile und einen Ersatzwert.

{% include nav.html %}
