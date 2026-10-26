---
title: Numerischer, String- und Boolescher Kontext
---

{% include menu.html %}

Drei Kontexte sind sehr häufig. Im ersten verhält sich ein Wert wie eine Zahl. Im zweiten verhält er sich wie ein String. Im dritten verhält er sich wie `True` oder `False`. Jeder dieser Kontexte hat einen Präfixoperator. Der Operator steht vor dem Wert. Er setzt den Kontext direkt:

* `+` — numerischer Kontext: Der Wert verhält sich wie eine Zahl
* `~` — Stringkontext: Der Wert verhält sich wie ein String
* `?` — Boolescher Kontext: Der Wert verhält sich wie `True` oder `False`

Verwende sie mit einem Array. `+` liefert die Länge des Arrays. `~` liefert seine Elemente, mit Leerzeichen dazwischen. `?` sagt dir, ob das Array Elemente hat:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Ein leeres Array ist im numerischen Kontext `0`. Im Booleschen Kontext ist es `False`:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Du musst diese Operatoren nicht immer schreiben. Oft setzt Raku den richtigen Kontext für dich. Arithmetik setzt Werte in den numerischen Kontext. Das Verbinden von Strings setzt sie in den Stringkontext. Und `if`, `while`, `and` und `or` setzen ihre Bedingung in den Booleschen Kontext:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Also funktioniert `if @array { … }` so, wie du es erwartest. Ein Array mit Elementen ist wahr. Mit den Präfixoperatoren verlangst du dieselben Umwandlungen selbst.

Du kannst `if` auch hinter die Anweisung schreiben. Dann ist der Code kurz und klar:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
