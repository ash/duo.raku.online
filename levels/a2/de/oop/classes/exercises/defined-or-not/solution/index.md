---
title: 'Lösung: Definiert oder nicht'
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

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Du findest den Quellcode in der Datei [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Ausgabe

```
False
False
True
True
```

## Kommentare

1. Die Schleife läuft über zwei Typobjekte, `Cat` und `Dog`. Sie läuft auch über zwei Instanzen, `Cat.new` und `Dog.new`.

1. Die zwei Typobjekte sind undefiniert. Also gibt `defined` für sie `False` zurück. Die zwei Instanzen sind definiert. Also gibt `defined` für sie `True` zurück. Hier ist nur eine Sache wichtig. Ist der Wert ein Typobjekt oder eine echte Instanz? Die Klasse des Wertes ist nicht wichtig.

{% include nav.html %}
