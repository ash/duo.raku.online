---
title: '`note`'
---

{% include menu.html %}

La rutino `note` presas siajn argumentojn al la norma erara fluo. Krom tio, ĝi funkcias same kiel [`say`](../say).

1. Vokas la `gist` metodon sur siaj argumentoj.
1. Aldonas novlinian karakteron.
1. Konvertas la rezulton al UTF-8.
1. Sendas ĝin al la `STDERR` fluo.

```raku
my $x = 42;
note "Aktuala valoro de \$x estas $x";
```

Kontrolu, ke ĉi tiu programo ne sendas la mesaĝon al `STDOUT`:

```
$ raku t.raku > /dev/null
Aktuala valoro de $x estas 42
```

Se vi vokas `note` sen argumentoj, ĝi presas la defaŭltan mesaĝon, `Noted`.

{% include nav.html %}
