---
title: Klassen
translations_gpt:
---

{% include menu.html %}

Bisher haben Sie nur die Typen benutzt, die Raku schon hat. Das sind Zahlen, Zeichenketten, Arrays und so weiter. Mit _objektorientierter Programmierung_ können Sie eigene Typen erstellen. So ein Typ heißt _Klasse_. Ein Wert dieses Typs heißt _Objekt_.

Für eine Klasse schreiben Sie das Schlüsselwort `class`. Danach schreiben Sie einen Namen und einen Block:

```raku
class Dog {
}
```

Diese Klasse `Dog` ist noch leer. Aber sie ist schon ein neuer Typ. Ein Objekt einer Klasse heißt auch _Instanz_. `new` ist eine Methode. Für eine Instanz rufen Sie sie auf dem Klassennamen auf:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Jetzt enthält die Variable `$rex` ein `Dog`-Objekt. Jeder Aufruf von `new` erstellt ein neues, eigenes Objekt:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` und `$fido` sind zwei verschiedene Hunde. Die Klasse ist noch leer, aber die Hunde sind verschieden. In den nächsten Abschnitten geben Sie einer Klasse eigene Daten. Diese Daten heißen _Attribute_. Eine Klasse bekommt auch ein eigenes Verhalten, also Aktionen. Diese Aktionen heißen _Methoden_. Das erste Thema sieht sich eine Klasse und ihre Instanzen genauer an. Es zeigt, wie sie sich unterscheiden.

{% include nav.html %}
