---
title: 'Lösung: Verdreifachen als Methode'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Du findest den Quellcode in der Datei [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Ausgabe

```
21
```

## Kommentare

1. Als Methode gehört `triple` zum Objekt und benutzt das `n` des Objekts. Sie übergeben nichts.

1. In der Version mit Subroutine kommen die Daten als Argument herein. Hier liegen die Daten stattdessen im Objekt. Beide Versionen ergeben `21`.

{% include nav.html %}
