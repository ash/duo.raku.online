---
title: Mainīgā deklarēšana
---

{% include menu.html %}

Pirms izmantojat mainīgo, jums tas ir jāpiesaka. Raku valodā tam ir īpaši vārdi, ko sauc par _deklaratoriem_. Lai deklarētu mainīgo, rakstiet `my` šādi:

```raku
my $name;
```

Ar šo rindu jūs esat izveidojis jaunu mainīgo, kuram vēl nav vērtības. Bet kompilators par to jau zina. Kad tas pats nosaukums parādās vēlāk programmā, kompilators to atpazīst.

## Vairāk nekā viens mainīgais

Jūs varat deklarēt divus vai vairākus mainīgos ar vienu `my` deklaratoru:

```raku
my ($x, $y);
```

{% include nav.html %}
