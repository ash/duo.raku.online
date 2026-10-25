---
title: '`note`'
---

{% include menu.html %}

De routine `note` print zijn argumenten naar de standaard foutstroom. Voor de rest is `note` net als [`say`](../say).

1. Roept de `gist` methode aan op zijn argumenten.
1. Voegt een nieuwe regelkarakter toe.
1. Converteert het resultaat naar UTF-8.
1. Stuurt het naar de `STDERR` stroom.

```raku
my $x = 42;
note "Huidige waarde van \$x is $x";
```

Dit programma stuurt het bericht niet naar `STDOUT`. Controleer het:

```
$ raku t.raku > /dev/null
Huidige waarde van $x is 42
```

Je kunt `note` zonder argumenten aanroepen. Dan print hij het standaardbericht, `Noted`.

{% include nav.html %}
