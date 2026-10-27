---
title: 'Lösung: Die method resolution order'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class A {
}

class B is A {
}

class C is B {
}

say C.^mro.map(*.^name);
```

🦋 Du findest den Quellcode in der Datei [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Ausgabe

```
(C B A Any Mu)
```

## Kommentare

1. `.^mro` gibt eine Kette von Typen zurück. Raku durchsucht diese Kette nach einer Methode.

1. Die Kette folgt der Vererbungslinie, Schritt für Schritt. Zuerst kommt `C`. Dann kommt seine Elternklasse, `B`. Dann kommt `A`, die Elternklasse von `B`. Zum Schluss kommen `Any` und `Mu`. Jeder Typ endet mit ihnen. Mit mehr Ebenen von Klassen ist die Liste einfach länger.

{% include nav.html %}
