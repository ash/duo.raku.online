---
title: '`note`'
---

{% include menu.html %}

De routine `note` print zijn argumenten naar de standaard foutstroom. Verder werkt hij precies zoals [`say`](../say).

1. Roept de `gist` methode aan op zijn argumenten.
1. Voegt een nieuwe regelkarakter toe.
1. Converteert het resultaat naar UTF-8.
1. Stuurt het naar de `STDERR` stroom.

```raku
my $x = 42;
note "Huidige waarde van \$x is $x";
```

Controleer dat dit programma het bericht niet naar `STDOUT` stuurt:

```
$ raku t.raku > /dev/null
Huidige waarde van $x is 42
```

Als je `note` zonder argumenten aanroept, print hij het standaardbericht, `Noted`.

{% include nav.html %}
