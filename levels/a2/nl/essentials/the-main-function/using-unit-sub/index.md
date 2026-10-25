---
title: Gebruik van `unit sub`
---

{% include menu.html %}

Met `unit sub` wordt de rest van het bestand het lichaam van de functie! Dit is heel handig bij `MAIN`. Zonder dit staan er accolades om bijna het hele bestand. Met `unit sub` heb je die accolades niet nodig. Ook hebben de regels dan geen extra spaties aan het begin nodig.

Hier is een voorbeeldprogramma met `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "De som van $a en $b is $sum.";
```

In dit bestand is `MAIN` de enige functie. Is dat bij jouw programma ook zo? Probeer dan `unit sub MAIN` te gebruiken, zoals in het voorbeeld hierboven.

{% include nav.html %}
