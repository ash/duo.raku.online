---
title: 'Lösung: Eine Raute aus Klassen'
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

1. `D` erbt von zwei Eltern zugleich: `class D is B is C` führt jede davon mit ihrem eigenen `is` auf. Das ist Mehrfachvererbung. Zusammen bilden `A`, `B`, `C` und `D` eine *Raute*. Es gibt zwei Wege von `D` hinauf zum gemeinsamen Vorfahren `A`.

1. `.^mro` macht aus der Raute eine einzige, gerade Suchreihenfolge. `D` kommt zuerst, dann seine Eltern `B` und `C` in der Reihenfolge, in der Sie sie geschrieben haben. Dann kommt das gemeinsame `A` und schließlich `Any` und `Mu`.

1. `B` und `C` führen beide zu `A`. Trotzdem erscheint der Typ `A` nur **einmal**, und erst nach beiden. Genau darum geht es bei einer method resolution order. Jeder Typ wird genau einmal besucht. Und eine Elternklasse kommt nie vor einem Kind, das von ihr erbt. Deshalb findet Raku eine Methode in `B` immer vor der Methode in `A`, die sie überschreibt.

{% include nav.html %}
