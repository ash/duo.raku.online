---
title: 'Solution: Eine Variable beschreiben'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Du findest den Quellcode in der Datei [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Ausgabe

```
Str
Scalar
$lang
```

## Kommentare

1. `.^name` gibt den Typ des Wertes im Container zurück. Dieser Typ ist `Str`.

1. `.VAR` gibt den Container hinter der Variable zurück. `.^name` auf dem Container gibt `Scalar` zurück. Das ist der Typ des Containers selbst.

1. `.VAR.name` gibt den Namen der Variable mit ihrem Sigil zurück: `$lang`. Beachte: Das ist die Methode `name`. Es ist nicht die Meta-Methode `^name` aus den ersten beiden Zeilen.

{% include nav.html %}
