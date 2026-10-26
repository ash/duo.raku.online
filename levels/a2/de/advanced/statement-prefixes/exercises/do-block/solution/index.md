---
title: 'Solution: Der Wert eines do-Blocks'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Du findest den Quellcode in der Datei [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Ausgabe

```
big
```

## Kommentare

1. Ein einfaches `if` ist eine Anweisung. Es hat keinen Wert, den du nutzen kannst. Das `do`-Präfix macht das ganze `if`/`else` zu einem Ausdruck.

1. `7 > 5` ist wahr. Also ist der Wert des Ausdrucks `'big'`. Das Programm weist ihn `$label` zu. Derselbe Trick geht auch mit `do given` und `do for`.

1. Du musst die `{ }`-Klammern schreiben. In Raku braucht `if` immer einen Block. Also kannst du die Zweige nicht kürzer machen, wie `if 7 > 5 'big' else 'small'`. Dieser Code lässt sich nicht kompilieren. Der Fehler ist *Missing block*.

{% include nav.html %}
