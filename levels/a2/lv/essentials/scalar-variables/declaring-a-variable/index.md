---
title: Mainīgā deklarēšana
---

{% include menu.html %}

Jums ir jāpiesaka mainīgais, pirms jūs to izmantojat. Raku valodā tam ir īpaši vārdi. Tos sauc par _deklaratoriem_. Lai deklarētu mainīgo, izmantojiet `my`, šādi:

```raku
my $name;
```

Tagad jums ir jauns mainīgais. Tam vēl nav vērtības. Bet kompilators jau zina tā nosaukumu. Vēlāk programma atkal izmanto to pašu nosaukumu. Tad kompilators zina, kurš mainīgais tas ir.

## Vairāk nekā viens mainīgais

Viens `my` var deklarēt divus vai vairākus mainīgos:

```raku
my ($x, $y);
```

{% include nav.html %}
