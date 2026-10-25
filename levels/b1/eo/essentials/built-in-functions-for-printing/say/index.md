---
title: '`say`'
---

{% include menu.html %}

Jen kion la enkonstruita rutino `say` faras:

1. Vokas la metodon `gist` sur siaj argumentoj.
1. Aldonas novlinian karakteron.
1. Konvertas la rezulton al UTF-8.
1. Sendas ĝin al la fluo `STDOUT`.

Por la uzanto, ĝi aspektas simpla. `say` nur presas la enhavon de variablo al la terminalo kaj aldonas novlinion.

La unua paŝo bezonas iom da klarigo. Ĉiu enkonstruita datentipo, kiel entjeroj aŭ ĉenoj, havas metodon `gist`. Por tiaj simplaj tipoj, ĝi redonas valoron, kiu reprezentas la objekton. Homoj povas facile legi ĉi tiun valoron.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Vektoroj kaj asociaj tabeloj estas ekzemploj de pli kompleksaj datumoj. Por ili, la metodo `gist` aldonas iom da formatado.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Vi povas voki `say` kaj kiel funkcion, kaj kiel metodon:

```raku
say 42;
say(42);
42.say;
```

Vi povas pasi plurajn argumentojn al `say`. Ĝi kunigas la partojn de la eligo sen iuj ajn spacoj inter ili.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
