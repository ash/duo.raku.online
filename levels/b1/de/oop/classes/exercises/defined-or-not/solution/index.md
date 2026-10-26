---
title: 'Lösung: Definiert oder nicht'
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

1. Die Schleife läuft über eine Mischung von Werten. Zwei sind Typobjekte, `Cat` und `Dog`, und zwei sind Instanzen, `Cat.new` und `Dog.new`.

1. Beide Typobjekte sind undefiniert, also gibt `defined` für sie `False` zurück. Beide Instanzen sind definiert, also gibt die Methode `True` zurück. Es kommt also darauf an, ob ein Wert ein Typobjekt oder eine echte Instanz ist. Die Klasse des Wertes spielt keine Rolle.

{% include nav.html %}
