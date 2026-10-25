---
title: '`note`'
---

{% include menu.html %}

La rutino `note` presas siajn argumentojn al la norma erara fluo. En ĉio alia, `note` estas kiel [`say`](../say).

1. Vokas la `gist` metodon sur siaj argumentoj.
1. Aldonas novlinian karakteron.
1. Konvertas la rezulton al UTF-8.
1. Sendas ĝin al la `STDERR` fluo.

```raku
my $x = 42;
note "Aktuala valoro de \$x estas $x";
```

Ĉi tiu programo ne sendas la mesaĝon al `STDOUT`. Kontrolu tion:

```
$ raku t.raku > /dev/null
Aktuala valoro de $x estas 42
```

Vi povas voki `note` sen argumentoj. Tiam ĝi presas la defaŭltan mesaĝon, `Noted`.

{% include nav.html %}
