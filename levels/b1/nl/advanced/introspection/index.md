---
title: Containers introspecteren
---

{% include menu.html %}

_Introspectie_ betekent dat je een waarde of een container iets over zichzelf vraagt. Je kunt vragen naar zijn type, naar de container erachter, of naar hoe hij van binnen werkt. Je hebt al één introspectietool gebruikt, `.^name`, die het type van een waarde afdrukt.

Raku heeft een kleine familie van zulke tools, en hun namen staan in hoofdletters: `WHAT`, `VAR`, `WHO` en `HOW`. Ze worden soms _pseudo-methodes_ genoemd. Dat komt doordat de compiler ze een speciale betekenis geeft. Hij behandelt ze niet als gewone methodes. Dit gedeelte bekijkt ze een voor een.

Ter herinnering is hier nog een keer `.^name`. Deze container heeft geen typebeperking, en we bewaren er verschillende waarden in. `.^name` laat zien hoe zijn type verandert:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

In het begin is de container `Any`. Daarna toont hij het type van de waarde die hij op dat moment bevat.

{% include nav.html %}
