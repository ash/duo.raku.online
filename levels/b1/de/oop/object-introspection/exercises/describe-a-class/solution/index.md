---
title: 'Lösung: Beschreiben Sie eine Klasse'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 Du findest den Quellcode in der Datei [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Ausgabe

```
Dog
4
False
```

## Kommentare

1. `.^name` gibt den eigenen Namen der Klasse zurück, `Dog`.

1. `.^mro` gibt die Vererbungskette zurück, und `.elems` zählt sie. Die Kette hat vier Typen: `Dog`, seine Elternklasse `Animal` sowie `Any` und `Mu`, die jede Klasse hat. Also ist die Anzahl `4`.

1. `.^mro.map(*.^name)` macht aus dieser Kette eine Liste von Typnamen, `(Dog Animal Any Mu)`. Der Operator `∈` prüft, ob etwas Element einer Menge ist. Hier prüft er, ob `Cat` einer davon ist. `Dog` erbt von keinem `Cat`, also ist die Antwort `False`.

{% include nav.html %}
