---
title: Abgleich mit einem Bereich
---

{% include menu.html %}

Hier sind ein Bereich und eine Variable. Die Variable hat einen ganzzahligen Wert:

```raku
my $r = 1..10;
my $v = 7;
```

Verwenden Sie den _Smart-Match-Operator_ `~~`. Er prüft, ob der Wert im Bereich liegt:

```
say $v ~~ $r;
```

In diesem Beispiel ist die Bedingung `True`. Also gibt das Programm `True` aus.

{% include nav.html %}
