---
title: Die Vererbungskette
translations_gpt:
---

{% include menu.html %}

Wenn eine Klasse von einer anderen erbt, können Sie nach ihrer ganzen Kette von Typen fragen. Die Metamethode `.^mro` gibt diese Kette zurück. Der Name steht für _method resolution order_. Das ist die Reihenfolge, in der Raku nach einer Methode sucht.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lesen Sie die Liste von links. Ein `Dog` ist zuerst er selbst, dann ein `Animal` (seine Elternklasse) und dann `Any` und `Mu`. Diese zwei Typen stehen ganz oben, und jedes Raku-Objekt erbt von ihnen. Bei einem Methodenaufruf auf einem `Dog` durchsucht Raku diese Liste von links nach rechts. Raku nimmt die erste passende Methode, die es findet. Genau deshalb überschreibt die Methode eines Kindes die Methode der Elternklasse. Das Kind steht früher in der Kette.

Wenn eine Klasse keine Elternklasse hat, die Sie selbst angeben, ist die Kette kürzer. Sie enthält nur die Klasse selbst, gefolgt von `Any` und `Mu`.

{% include nav.html %}
