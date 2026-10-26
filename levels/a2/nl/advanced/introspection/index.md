---
title: Containers introspecteren
---

{% include menu.html %}

_Introspectie_ betekent dat je een waarde of een container iets over zichzelf vraagt. Je kunt naar zijn type vragen. Je kunt vragen naar de container erachter. Je kunt ook vragen hoe Raku hem van binnen laat werken. Je kent al één tool voor introspectie, `.^name`. Die drukt het type van een waarde af.

Raku heeft een kleine groep van zulke tools. Hun namen staan in hoofdletters: `WHAT`, `VAR`, `WHO` en `HOW`. Mensen noemen ze soms _pseudo-methodes_. Ze lijken op methodes. Maar het zijn geen gewone methodes. De compiler geeft ze een speciale betekenis. Dit gedeelte bekijkt ze allemaal.

Hier is nog eens `.^name`. De container in deze code heeft geen vast type. We bewaren er verschillende waarden in. `.^name` laat zien hoe het type verandert:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Eerst is de container `Any`. Daarna toont hij het type van zijn huidige waarde.

{% include nav.html %}
