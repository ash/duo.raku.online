---
title: 'Solution: Der Wert eines do-Blocks'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Ein einfaches `if` ist eine Anweisung, und du kannst seinen Wert nicht verwenden. Das `do`-Präfix verwandelt das ganze `if`/`else` in einen Ausdruck.

1. `7 > 5` ist wahr, also ergibt der Ausdruck `'big'`, und dieser Wert wird `$label` zugewiesen. Derselbe Trick funktioniert mit `do given` und `do for`.

1. Die `{ }`-Klammern sind nicht optional. In Raku nimmt `if` immer einen Block. Deshalb kannst du die Zweige nicht zu `if 7 > 5 'big' else 'small'` verkürzen. Das lässt sich nicht kompilieren und gibt den Fehler *Missing block*.

{% include nav.html %}
