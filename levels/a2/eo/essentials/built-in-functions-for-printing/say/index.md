---
title: '`say`'
---

{% include menu.html %}

La enkonstruita rutino `say` faras kvar aferojn:

1. Vokas la metodon `gist` sur siaj argumentoj.
1. Aldonas novlinian karakteron.
1. Konvertas la rezulton al UTF-8.
1. Sendas ĝin al la fluo `STDOUT`.

Por la uzanto, ĝi estas simpla. `say` presas la valoron de variablo en la terminalo. Poste ĝi aldonas novlinion.

La unua paŝo bezonas iom da klarigo. Ĉiu enkonstruita datentipo havas metodon `gist`. Entjeroj kaj ĉenoj estas ekzemploj de tiaj tipoj. Por ĉi tiuj simplaj tipoj, `gist` redonas la objekton kiel facile legeblan valoron.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Kelkaj datumoj estas pli kompleksaj, ekzemple vektoroj aŭ asociaj tabeloj. Por tiaj datumoj, `gist` aldonas iom da formatado.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Vi povas voki `say` kiel funkcion. Vi ankaŭ povas voki ĝin kiel metodon:

```raku
say 42;
say(42);
42.say;
```

Vi povas pasi pli ol unu argumenton al `say`. Ĝi kunigas la partojn de la eligo. Ne estas spacoj inter ili.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
