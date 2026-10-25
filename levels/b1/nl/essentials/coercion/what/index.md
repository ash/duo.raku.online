---
title: Introspectie met `WHAT`
---

{% include menu.html %}

Om het gegevenstype in een variabele te zien, roep je de `WHAT`-methode erop aan:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Zoals je in de opmerkingen ziet, wordt het type tussen haakjes afgedrukt. Bijvoorbeeld `(Int)` of `(Str)`.

Het is geen probleem om een methode op een letterlijke waarde zelf aan te roepen. Bijvoorbeeld:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Let op dat we `-1` tussen haakjes zetten. Zonder haakjes zou `say -1.WHAT` proberen een minteken te zetten voor het resultaat van `1.WHAT`. Dat leidt tot een uitzondering.

{% include nav.html %}
