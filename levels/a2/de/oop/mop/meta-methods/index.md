---
title: Metamethoden
translations_gpt:
---

{% include menu.html %}

Eine _Metamethode_ rufen Sie mit `.^` auf, nicht mit `.`. Ein normales `.method` führt eine Methode des Objekts aus. Ein `.^method` ist anders. Es ruft eine Methode des **Metaobjekts** des Objekts auf. Ein Metaobjekt ist ein Objekt, das einen Typ beschreibt. Der Aufruf fragt also nach dem Typ. Er handelt nicht als der Typ.

Sie kennen schon `.^name`. Es gibt den Namen des Typs zurück:

```raku
say 42.^name; # Int
```

Andere Metamethoden zeigen, wie ein Typ gebaut ist. `.^attributes` listet seine Attribute auf. `.^find_method` sagt Ihnen, ob eine Methode existiert:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` gibt die _method resolution order_ zurück. Das ist eine Kette von Typen. Raku sucht in jedem davon nach einer Methode, in dieser Reihenfolge. Sie ist die Vererbungslinie einer Klasse:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` erbt von `A`. Am Ende erbt jeder Typ von `Any` und `Mu`. Sie rufen eine Methode auf einem `B` auf. Dann sucht Raku sie genau entlang dieses Wegs. Diese Metamethoden machen aus Ihren Typen Daten. Diese Daten zeigen, wie die Typen gebaut sind. Sie können sie abfragen, während das Programm läuft.

{% include nav.html %}
