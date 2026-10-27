---
title: 'Lösung: Beschreiben Sie eine Klasse'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `.^name` gibt den Namen der Klasse zurück, `Dog`.

1. `.^mro` gibt die Vererbungskette zurück. `.elems` zählt die Typen darin. In der Kette sind vier Typen. Das sind `Dog`, seine Elternklasse `Animal` und dann `Any` und `Mu`. Jede Klasse hat `Any` und `Mu` in ihrer Kette. Also ist die Anzahl `4`.

1. `.^mro.map(*.^name)` macht aus der Kette eine Liste von Typnamen: `(Dog Animal Any Mu)`. Der Operator `∈` prüft, ob ein Element in einer Menge ist. Hier prüft er, ob `Cat` einer dieser Namen ist. `Dog` erbt von keinem `Cat`. Also ist die Antwort `False`.

{% include nav.html %}
