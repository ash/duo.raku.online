---
title: 'Lösung: Verdreifachen als Methode'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Hier ist `triple` eine Methode. Sie gehört zum Objekt. Sie arbeitet mit dem eigenen `n` des Objekts. Der Methode übergeben Sie nichts.

1. Vergleichen Sie das mit der Subroutine. Dort kommen die Daten als Argument. Hier sind die Daten im Objekt. Beide Programme ergeben `21`.

{% include nav.html %}
