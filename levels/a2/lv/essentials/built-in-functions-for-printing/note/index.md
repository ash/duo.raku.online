---
title: '`note`'
---

{% include menu.html %}

`note` rutīna izdrukā savus argumentus uz standarta kļūdu plūsmu. Visā citā `note` ir līdzīga [`say`](../say).

1. Izsauc `gist` metodi uz saviem argumentiem.
1. Pievieno jaunas rindas rakstzīmi.
1. Konvertē rezultātu uz UTF-8.
1. Nosūta to uz `STDERR` plūsmu.

```raku
my $x = 42;
note "Pašreizējā \$x vērtība ir $x";
```

Šī programma nesūta ziņojumu uz `STDOUT`. Pārbaudiet to:

```
$ raku t.raku > /dev/null
Pašreizējā $x vērtība ir 42
```

Jūs varat izsaukt `note` bez argumentiem. Tad tā izdrukā noklusējuma ziņojumu, `Noted`.

{% include nav.html %}
