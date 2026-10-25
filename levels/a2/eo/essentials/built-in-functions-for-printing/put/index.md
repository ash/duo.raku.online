---
title: '`put`'
---

{% include menu.html %}

La rutino `put` funkcias kiel [`print`](../print). Sed defaŭlte, ĝi aldonas novan linion ĉe la fino:

1. Konvertas siajn argumentojn al ĉeno. Por tio, ĝi vokas la metodon `Str` sur ili.
1. Aldonas novan linio-karakteron.
1. Sendas la ĉenon al la fluo `STDOUT`.

Kelkaj ekzemploj:

```raku
42.put;
put 'Alpha', 'Beta';

my @array = 3, 4, 5;
put @array;

my %hash = a => 'b', c => 'd';
%hash.put;
```

Jen la eligo de la programo:

```console
$ raku t.raku
42
AlphaBeta
3 4 5
a	b
c	d
```

%%tipblock
## Nova linio de `put`

Kiujn karakterojn `put` aldonas post la eligo? Ĝi prenas ilin de la metodo `nl-out` de la eliga fluo. La defaŭlta valoro estas `\n`.
%%/tipblock

{% include nav.html %}
