---
title: Gebruik van `unit sub`
---

{% include menu.html %}

De constructie `unit sub` is erg handig. Die maakt van de rest van het bestand het lichaam van de functie! Met `MAIN` kun je zo de accolades rond bijna het hele bestand weglaten. Je hebt ook de extra inspringing niet nodig.

Het volgende voorbeeldprogramma laat zien hoe je `unit sub` gebruikt.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "De som van $a en $b is $sum.";
```

In dit bestand is `MAIN` de enige functie. Als dat ook voor jouw programma geldt, denk er dan over na om `unit sub MAIN` te gebruiken, zoals hierboven.

{% include nav.html %}
