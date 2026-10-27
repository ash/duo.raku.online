---
title: 'Lösung: Finden Sie eine Methode'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `.^find_method` gibt die Methode zurück, wenn sie existiert. Wenn sie nicht existiert, gibt sie einen undefinierten Wert zurück. Dann macht `so` daraus einen einfachen Wahrheitswert.

1. `Dog` definiert selbst keine Methoden, aber das Ergebnis ist trotzdem `True`. `find_method` durchsucht die ganze Vererbungskette und findet `speak` weiter oben, in `Animal`. Genauso findet auch ein echter Methodenaufruf auf einem `Dog` die geerbte Methode.

{% include nav.html %}
