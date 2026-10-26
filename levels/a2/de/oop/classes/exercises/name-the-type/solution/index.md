---
title: 'Lösung: Nennen Sie den Typ'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class Cat {
}

class Dog {
}

my $felix = Cat.new;

say $felix.WHAT;
say $felix.WHAT === Cat.WHAT;
say $felix.WHAT === Dog.WHAT;
```

🦋 Du findest den Quellcode in der Datei [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Ausgabe

```
(Cat)
True
False
```

## Kommentare

1. `WHAT` gibt das Typobjekt zurück. Raku zeigt es in runden Klammern: `(Cat)`. Also ist `$felix` eine `Cat`.

1. `===` prüft, ob zwei Typobjekte gleich sind. `$felix.WHAT === Cat.WHAT` ist `True`. Felix ist wirklich eine `Cat`. Aber `$felix.WHAT === Dog.WHAT` ist `False`. Eine `Cat` und ein `Dog` sind verschiedene Typen. Also sind ihre Typobjekte nicht gleich.

{% include nav.html %}
