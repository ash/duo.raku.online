---
title: 'Solution: Eine Variable beschreiben'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `.^name` liefert den Typ des Wertes im Container, und dieser Typ ist `Str`.

1. `.VAR` liefert den Container hinter der Variable. Dann gibt `.^name` darauf `Scalar` zurück, also den Typ des Containers selbst.

1. `.VAR.name` gibt den Namen der Variable zurück, `$lang`, mit ihrem Sigil. Beachte, dass das die Methode `name` ist. Es ist nicht die Meta-Methode `^name`, die wir in den ersten beiden Zeilen verwendet haben.

{% include nav.html %}
