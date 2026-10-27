---
title: 'Lösung: Finden Sie eine Methode'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Du findest den Quellcode in der Datei [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Ausgabe

```
True
```

## Kommentare

1. `.^find_method` gibt die Methode zurück, wenn es sie gibt. Wenn nicht, gibt sie einen undefinierten Wert zurück. `so` macht daraus einen einfachen Wahrheitswert, `True` oder `False`.

1. `Dog` hat keine eigenen Methoden. Aber das Ergebnis ist `True`. `find_method` sucht in der ganzen Vererbungskette. Die Methode findet `speak` weiter oben, in `Animal`. Ein echter Methodenaufruf auf einem `Dog` funktioniert genauso. Er findet die geerbte Methode auch so.

{% include nav.html %}
