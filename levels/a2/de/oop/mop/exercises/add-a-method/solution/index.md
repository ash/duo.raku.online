---
title: 'Lösung: Fügen Sie eine Methode hinzu'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Du findest den Quellcode in der Datei [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Ausgabe

```
Rex says woof
```

## Kommentare

1. `.^add_method` fügt dem Metaobjekt der Klasse eine neue Methode hinzu. Das passiert, während das Programm läuft. Sie geben die neue Methode als anonyme `method { … }` an. Das heißt, die Methode hat keinen eigenen Namen.

1. Die neue Methode ist eine echte Methode der Klasse. Also bekommt `$.name` in ihr das Attribut `name` des Objekts. Eine Methode im Rumpf der Klasse macht das genauso. Nach dem Aufruf von `.^add_method` können Sie `.speak` auf jedem `Dog` aufrufen.

{% include nav.html %}
