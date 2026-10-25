---
title: Abgleich mit einem Bereich
---

{% include menu.html %}

Nehmen Sie einen Bereich und eine Variable, die einen ganzzahligen Wert enthält:

```raku
my $r = 1..10;
my $v = 7;
```

Mit dem _Smart-Match-Operator_ `~~` können Sie prüfen, ob der Wert innerhalb des Bereichs liegt:

```
say $v ~~ $r;
```

In diesem Beispiel ist die Bedingung `True`, deshalb gibt das Programm `True` aus.

{% include nav.html %}
