---
title: Pod-basisbeginselen
---

{% include menu.html %}

Pod-documentatie staat in je bronbestand. Regels die met `=` beginnen, geven aan waar ze staat. De eenvoudigste manier is om ze tussen `=begin pod` en `=end pod` te schrijven:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Binnen het blok beschrijven directieven de structuur:

* `=head1`, `=head2`, … — koppen van verschillende niveaus
* een gewone alinea — gewoon tekst op eigen regels
* `=item` — een item in een lijst met opsommingstekens

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

De regel `=head1` is een kop op het hoogste niveau. De drie `=item`-regels vormen een lijst. Pod staat naast je code, maar verandert niet hoe die werkt. De compiler negeert Pod als hij het programma uitvoert. Maar als je erom vraagt, kan hij de Pod eruit halen en renderen. Een later onderwerp laat dit zien.

{% include nav.html %}
