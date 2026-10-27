---
title: Die Vererbungskette
translations_gpt:
---

{% include menu.html %}

Eine Klasse kann von einer anderen Klasse erben. Dann können Sie nach der ganzen Kette von Typen fragen. Die Klasse baut auf diesen Typen auf. Die Metamethode `.^mro` gibt diese Kette zurück. Der Name bedeutet _method resolution order_. In dieser Reihenfolge sucht Raku nach einer Methode.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lesen Sie die Liste von links. Zuerst ist ein `Dog` er selbst. Dann ist er ein `Animal`, seine Elternklasse. Dann ist er `Any` und `Mu`. Jedes Raku-Objekt erbt von diesen zwei Typen. Sie stehen ganz oben. Wenn Sie eine Methode auf einem `Dog` aufrufen, durchsucht Raku diese Liste. Raku geht von links nach rechts. Raku nimmt die erste passende Methode. Das erklärt das Überschreiben. Das Kind steht früher in der Kette. Also gewinnt seine Methode gegen die Methode der Elternklasse.

Manchmal hat eine Klasse keine Elternklasse mit `is`. Dann ist die Kette kürzer. Sie hat nur die Klasse selbst und dann `Any` und `Mu`.

{% include nav.html %}
