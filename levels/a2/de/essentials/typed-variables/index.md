---
title: Typisierte Variablen
---

{% include menu.html %}

In Raku enthält eine skalare Variable, oder ein skalarer Container, ein Objekt. Dieses Objekt kann verschiedene Typen haben. Zum Beispiel kann dieselbe Variable zuerst eine Zahl enthalten. Dann kann sie einen String enthalten:

```raku
my $var = 42;
$var = 'Hallo';
```

Hier ist ein weiteres Beispiel. Ein Ausdruck enthält verschiedene Datentypen:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Das ist wahrscheinlich keine gute Art, Code zu schreiben. Aber es ist ein ganz korrektes Raku-Programm.

Aber in Raku können Sie auch sagen, was eine Variable enthalten kann. Die Themen unten erklären mehr dazu.

{% include nav.html %}
