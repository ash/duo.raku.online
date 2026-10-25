---
title: Globālie mainīgie
---

{% include menu.html %}

Tagad mēs izveidojam mainīgo pirms koda bloka:

```raku
my $x = 1;

{
    $x = 42;
    say $x;
}

say $x;
```

Šeit `$x` ir globāls mainīgais. Tas ir globālajā darbības jomā. Visa programma var to izmantot. Programma izdrukā `42` divas reizes.

{% include nav.html %}
