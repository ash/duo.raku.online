---
title: '`put`'
---

{% include menu.html %}

La rutino `put` faras la saman laboron kiel [`print`](../print). Sed defaŭlte, ĝi ankaŭ aldonas novan linion ĉe la fino:

1. Vokas la metodon `Str` sur siaj argumentoj por konverti ilin al ĉeno.
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

Jen kion la programo presas:

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

`put` aldonas kelkajn karakterojn post la eligo. La ĝustaj karakteroj venas de la metodo `nl-out` de la eliga fluo. Ĝia defaŭlta valoro estas `\n`.
%%/tipblock

{% include nav.html %}
