---
title: Reeksen
---

{% include menu.html %}

In Raku maken reeksen lijsten van items die op elkaar volgen.

In het eenvoudigste geval is een reeks een lijst van gehele getallen die steeds met één toenemen. Om een reeks te maken, gebruik je de operator `..` en twee waarden. Die bepalen de minimum- en maximumwaarde van de reeks:

```raku
1 .. 5
```

De spaties rond de operator zijn niet verplicht. Dus je kunt dezelfde reeks zo schrijven:

```raku
1..5
```

Een reeks is een manier om lijsten te maken, maar het is nog steeds één object. Dus je kunt hem opslaan in een scalaire variabele:

```raku
my $r = 1 .. 5;
```

## Niet alleen nummers

Reeksen kunnen ook andere datatypes gebruiken, als Raku weet hoe het hun waarden moet verhogen. Bijvoorbeeld:

```raku
my $letters = 'a' .. 'z';
```

In Raku zijn reeksen objecten van hun eigen datatype. Het type van de variabele `$r` is `Range`.

{% include nav.html %}
