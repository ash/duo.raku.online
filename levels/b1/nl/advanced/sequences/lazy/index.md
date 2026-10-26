---
title: Luie en oneindige reeksen
translations_gpt:
---

{% include menu.html %}

Een reeks hoeft niet al zijn waarden in één keer te berekenen. Raku-reeksen zijn _lui_ (lazy): elke waarde wordt pas gemaakt als die echt nodig is. Zo kun je een reeks beschrijven die helemaal geen einde heeft.

Om een oneindige reeks te schrijven, gebruik je `Inf` als eindpunt. De `...`-operator bindt minder sterk dan `=`, dus Raku zou de `=` eerst doen. Daarom zet je de reeks tussen haakjes:

```raku
my $naturals = (1 ... Inf);
```

Zonder de haakjes zou `my $naturals = 1 ... Inf` alleen `1` aan de variabele toewijzen. Daarna zou het de reeks apart opbouwen. Een eindeloze reeks berekenen die niemand gebruikt, zou het programma laten vastlopen.

Op dit moment is er nog niets berekend. De reeks geeft alleen waarden als je erom vraagt. De methode `head` neemt de eerste paar ervan:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

De reeks is oneindig, maar alleen de eerste vijf getallen worden gemaakt. Zonder luiheid zou het programma proberen de hele eindeloze reeks te bouwen. Zo'n programma zou nooit klaar zijn.

Als een reeks eindig is, kan de methode `tail` juist waarden van het einde nemen:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Door luiheid kun je twee dingen scheiden. Het eerste is de _beschrijving_ van een reeks. Het tweede is de beslissing hoeveel je ervan gebruikt.

{% include nav.html %}
