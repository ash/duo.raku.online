---
title: Pod-basisbeginselen
---

{% include menu.html %}

Pod-documentatie staat in je bronbestand. Speciale regels markeren ze. Die regels beginnen met `=`. De eenvoudigste manier is een blok Pod. Zet het tussen `=begin pod` en `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

In het blok tonen directieven de structuur van de tekst:

* `=head1`, `=head2`, … — koppen van verschillende niveaus
* een normale alinea — alleen tekst op eigen regels
* `=item` — één item in een lijst met bolletjes

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

De regel `=head1` is een kop op het hoogste niveau. De drie `=item`-regels maken een lijst. Pod staat naast je code. Maar het verandert de code niet. De compiler slaat de Pod over als hij het programma uitvoert. Maar de compiler kan de Pod er ook uithalen. Dan toont hij de Pod als tekst. Dat doet hij als je erom vraagt. Een later onderwerp laat dit zien.

{% include nav.html %}
