---
title: Metamethoden
translations_gpt:
---

{% include menu.html %}

Eine _Metamethode_ wird mit `.^` statt mit `.` aufgerufen. Das gewöhnliche `.method` führt eine Methode des Objekts aus. Aber `.^method` ruft eine Methode auf dem **Metaobjekt** des Objekts auf. Es fragt also nach dem Typ, statt als der Typ zu handeln.

Sie haben `.^name` schon gesehen, das den Namen des Typs zurückgibt:

```raku
say 42.^name; # Int
```

Andere Metamethoden sehen sich den Aufbau eines Typs an. `.^attributes` listet seine Attribute auf, und `.^find_method` sagt Ihnen, ob eine Methode existiert:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` gibt die _method resolution order_ zurück. Das ist die Kette der Typen, die Raku der Reihe nach durchsucht, um eine Methode zu finden. Sie ist die Vererbungslinie einer Klasse:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` erbt von `A`, und am Ende erbt jeder Typ von `Any` und `Mu`. Deshalb sucht Raku eine Methode eines `B` genau entlang dieses Wegs. Diese Metamethoden machen aus dem Aufbau Ihrer Typen Daten. Diese Daten können Sie zur Laufzeit abfragen.

{% include nav.html %}
