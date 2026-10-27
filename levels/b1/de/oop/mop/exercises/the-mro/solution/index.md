---
title: 'Lösung: Die method resolution order'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `.^mro` gibt die Kette der Typen zurück, die Raku durchsucht, wenn es eine Methode sucht.

1. Die Kette folgt der Vererbungslinie Schritt für Schritt. Zuerst kommt `C`, dann seine Elternklasse `B` und dann die Elternklasse von `B`, also `A`. Zum Schluss kommen `Any` und `Mu`, weil jeder Typ mit ihnen endet. Bei einer tieferen Hierarchie ist die Liste einfach länger.

{% include nav.html %}
