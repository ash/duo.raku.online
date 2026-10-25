---
title: Typisierte Variablen
---

{% include menu.html %}

In Raku enthält eine skalare Variable (oder ein skalarer Container) ein einzelnes Objekt. Dieses Objekt kann von verschiedenen Typen sein. Zum Beispiel kann dieselbe Variable zuerst eine Zahl und dann einen String enthalten:

```raku
my $var = 42;
$var = 'Hallo';
```

Hier ist ein weiteres Beispiel, das verschiedene Datentypen in einem Ausdruck mischt:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Das ist wahrscheinlich nicht die beste Programmierpraxis. Aber es ist ein völlig korrektes Raku-Programm.

Raku lässt Sie jedoch festlegen, was eine Variable enthalten darf. Mehr Details finden Sie in den Themen unten.

{% include nav.html %}
