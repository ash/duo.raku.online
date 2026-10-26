---
title: Luie en oneindige reeksen
translations_gpt:
---

{% include menu.html %}

Een reeks hoeft niet al zijn waarden tegelijk te berekenen. Reeksen in Raku zijn _lui_ (lazy). Raku maakt elke waarde pas als je die echt nodig hebt. Zo kun je een reeks helemaal zonder einde beschrijven.

Gebruik voor een oneindige reeks `Inf` als eindpunt. Raku doet de `=` eerder dan de `...`. We zeggen dat `...` minder sterk bindt dan `=`. Zet de reeks dus tussen haakjes:

```raku
my $naturals = (1 ... Inf);
```

Kijk naar `my $naturals = 1 ... Inf` zonder haakjes. Hier krijgt de variabele alleen `1`. Daarna bouwt Raku de reeks apart op. Niemand gebruikt deze eindeloze reeks. Maar Raku probeert hem te berekenen. Dus loopt het programma vast en stopt het nooit.

Tot nu toe berekent Raku niets. De reeks geeft je alleen waarden als je erom vraagt. De methode `head` neemt de eerste paar waarden:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

De reeks is oneindig. Maar Raku maakt alleen de eerste vijf getallen. Zonder luiheid probeert het programma de hele eindeloze reeks te bouwen. Zo'n programma is nooit klaar.

Een eindige reeks heeft een einde. Bij zo'n reeks neemt de methode `tail` waarden van het einde:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Door luiheid kun je twee dingen apart doen. Eerst geef je de _beschrijving_ van een reeks. Later beslis je hoeveel je ervan gebruikt.

{% include nav.html %}
