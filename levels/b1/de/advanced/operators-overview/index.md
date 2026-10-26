---
title: Überblick über Operatorverhalten
translations_gpt:
---

{% include menu.html %}

Wenn ein Ausdruck mehrere Operatoren hat, muss Raku entscheiden, in welcher Reihenfolge es sie anwendet. Zwei Regeln bestimmen das: _Vorrang_ und _Assoziativität_.

## Vorrang

Der Vorrang entscheidet, welcher Operator stärker ist, also welcher stärker bindet. Die Multiplikation hat einen höheren Vorrang als die Addition, darum wird sie zuerst ausgeführt:

```raku
say 2 + 3 * 4; # 14
```

Raku liest den Ausdruck als `2 + (3 * 4)`, also ist das Ergebnis `14` und nicht `20`. Mit Klammern können Sie immer eine andere Reihenfolge erreichen:

```raku
say (2 + 3) * 4; # 20
```

## Assoziativität

Die Assoziativität entscheidet über die Reihenfolge, wenn Operatoren den _gleichen_ Vorrang haben. Die Subtraktion ist linksassoziativ, das heißt, sie gruppiert von links:

```raku
say 8 - 3 - 2; # 3
```

Das ist `(8 - 3) - 2`, und das ergibt `3`. Die Potenzierung dagegen ist rechtsassoziativ:

```raku
say 2 ** 3 ** 2; # 512
```

Hier wird der Ausdruck als `2 ** (3 ** 2)` gruppiert. Das ist `2 ** 9`, und das ergibt `512`.

## Verkettete Vergleiche

Vergleichsoperatoren können _verkettet_ werden. Das liest sich natürlich und tut, was Sie aus der Mathematik erwarten:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Der mittlere Wert wird mit den Werten auf beiden Seiten verglichen. Also ist `1 < 2 < 3` wahr, weil sowohl `1 < 2` als auch `2 < 3` wahr sind.

{% include nav.html %}
