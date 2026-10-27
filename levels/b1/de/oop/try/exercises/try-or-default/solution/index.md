---
title: 'Lösung: Try oder Standardwert'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der fehlschlagende `try`-Block ergibt einen undefinierten Wert.

1. Also gibt der Defined-or-Operator `//` seine rechte Seite zurück, `'default'`. Das ist ein sauberer Weg, mit einem Ersatzwert in nur einer Zeile weiterzumachen.

{% include nav.html %}
