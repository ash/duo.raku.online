---
title: 'Lösung: Nennen Sie den Typ'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `WHAT` gibt das Typobjekt zurück, das in Klammern als `(Cat)` erscheint. Also ist `$felix` eine `Cat`.

1. `===` prüft, ob zwei Typobjekte identisch sind. `$felix.WHAT === Cat.WHAT` ist `True`, weil Felix wirklich eine `Cat` ist. Aber `$felix.WHAT === Dog.WHAT` ist `False`. `Cat` und `Dog` sind verschiedene Typen, also sind ihre Typobjekte nicht gleich.

{% include nav.html %}
