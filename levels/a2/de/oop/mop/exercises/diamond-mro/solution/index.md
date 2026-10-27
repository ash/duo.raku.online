---
title: 'Lösung: Eine Raute aus Klassen'
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

class C is A {
}

class D is B is C {
}

say D.^mro.map(*.^name);
```

🦋 Du findest den Quellcode in der Datei [diamond-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/diamond-mro.raku).

## Ausgabe

```
(D B C A Any Mu)
```

## Kommentare

1. `D` erbt gleichzeitig von zwei Elternklassen. `class D is B is C` hat ein `is` für jede Elternklasse. Das nennt man Mehrfachvererbung. Die Klassen `A`, `B`, `C` und `D` bilden eine *Raute*. Es gibt zwei Wege von `D` hinauf zu `A`. `A` ist die Elternklasse von `B` und von `C`.

1. `.^mro` macht aus der Raute eine flache Linie. In dieser Reihenfolge sucht Raku. `D` kommt zuerst. Dann kommen seine Elternklassen, `B` und `C`. Sie kommen in der Reihenfolge aus dem Code. Dann kommt `A`, die gemeinsame Elternklasse. Zum Schluss kommen `Any` und `Mu`.

1. `B` und `C` führen beide zu `A`. Aber der Typ `A` steht nur **einmal** in der Liste. Und er kommt nach beiden. Das ist das Ziel einer method resolution order. Raku besucht jeden Typ genau einmal. Eine Elternklasse kommt nie vor ihrem Kind. Also findet Raku eine Methode in `B` immer zuerst. Raku findet sie vor der Methode in `A`, die sie überschreibt.

{% include nav.html %}
