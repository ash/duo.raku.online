---
title: Subroutinen versus Methoden
translations_gpt:
---

{% include menu.html %}

Jetzt kennen Sie zwei Wege, Aktionen zusammenzufassen. Der eine ist eine _Subroutine_. Der andere ist eine _Methode_. Sie sehen ähnlich aus. Aber Sie benutzen sie auf verschiedene Weise.

Eine Subroutine steht allein. Sie gehört zu nichts. Sie rufen sie über ihren Namen auf. Sie übergeben ihr alles, was sie braucht, als Argumente:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Eine Methode gehört zu einer Klasse. Sie ist wie eine Funktion in der Klasse. Sie rufen eine Methode auf einem Objekt auf, mit einem Punkt. Ein Objekt ist ein Wert der Klasse. Die Methode kann die Daten ihres Objekts benutzen. Dafür hat sie `self` und die Accessoren der Attribute. Also übergeben Sie ihr diese Daten nicht:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Beide ergeben dieselbe Zahl. Der Unterschied ist, woher die Daten kommen. Die Subroutine bekommt den Radius als Argument. Die Methode liest den Radius aus ihrem Objekt. Das ist das Objekt, auf dem Sie sie aufrufen.

Hier ist eine einfache Regel. Steht der Code allein und arbeitet er nur mit seinen Argumenten? Dann nehmen Sie eine Subroutine. Gehört der Code zu einem Objekt und arbeitet er mit den Daten des Objekts? Dann nehmen Sie eine Methode. Gehört der Code zu einer Klasse, aber nicht zu einem einzelnen Objekt? Dann nehmen Sie Klassenmethoden.

{% include nav.html %}
