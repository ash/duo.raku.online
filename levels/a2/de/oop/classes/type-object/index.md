---
title: Typobjekte und Instanzen
translations_gpt:
---

{% include menu.html %}

Sie können einen Klassennamen schreiben, zum Beispiel `Dog`. Mit diesem Namen meinen Sie das _Typobjekt_ der Klasse. Das Typobjekt steht für den Typ selbst. Es ist keines der Objekte dieses Typs. Eine _Instanz_ ist anders. Sie erstellen sie mit `new`. Sie ist ein echtes Objekt.

Raku sieht den Unterschied zwischen ihnen. Die Methode `defined` gibt für ein Typobjekt `False` zurück. Für eine Instanz gibt sie `True` zurück:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Ein Typobjekt hat keine echten Daten. Es beschreibt nur einen Typ. Also sagt Raku, dass es _undefiniert_ ist. Eine Instanz ist ein echtes Objekt. Also ist sie _definiert_.

`WHAT` zeigt für beide den gleichen Typ. Sie haben `WHAT` im [Abschnitt über Container](/de/advanced/containers) gesehen:

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku zeigt einen Typ in runden Klammern, wie `(Dog)`. Also haben `Dog` und `Dog.new` den gleichen Typ, `Dog`. Aber sie sind verschiedene Dinge. `Dog` ist der Typ selbst. `Dog.new` ist ein Objekt dieses Typs.

{% include nav.html %}
