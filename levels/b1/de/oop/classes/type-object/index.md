---
title: Typobjekte und Instanzen
translations_gpt:
---

{% include menu.html %}

Ein Klassenname wie `Dog` bezeichnet das _Typobjekt_ der Klasse. Das Typobjekt steht für den Typ selbst. Es ist kein bestimmtes Objekt dieses Typs. Eine _Instanz_, die Sie mit `new` erzeugen, ist ein echtes Objekt.

Raku kann die beiden unterscheiden. Die Methode `defined` gibt für ein Typobjekt `False` und für eine Instanz `True` zurück:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Ein Typobjekt gilt als _undefiniert_, weil es keine echten Daten enthält. Es beschreibt nur einen Typ. Eine Instanz ist _definiert_, weil sie ein echtes Objekt ist.

Mit `WHAT` zeigen beide den gleichen Typ. Sie kennen `WHAT` schon aus dem [Abschnitt über Container](/de/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku zeigt einen Typ in Klammern, wie bei `(Dog)`. Also haben `Dog` und `Dog.new` den gleichen Typ, `Dog`. Aber es gibt einen Unterschied. `Dog` ist der Typ selbst, und `Dog.new` ist ein Objekt dieses Typs.

{% include nav.html %}
