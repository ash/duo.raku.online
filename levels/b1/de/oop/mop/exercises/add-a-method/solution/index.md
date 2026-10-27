---
title: 'Lösung: Fügen Sie eine Methode hinzu'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `.^add_method` fügt dem Metaobjekt der Klasse zur Laufzeit eine neue Methode hinzu. Sie geben die Methode als anonyme `method { … }` an.

1. Die hinzugefügte Methode ist eine echte Methode der Klasse. Deshalb erreicht `$.name` in ihr das Attribut `name` des Objekts. Eine Methode, die im Klassenrumpf steht, würde das Gleiche tun. Nach dem Aufruf reagiert jedes `Dog` auf `.speak`.

{% include nav.html %}
