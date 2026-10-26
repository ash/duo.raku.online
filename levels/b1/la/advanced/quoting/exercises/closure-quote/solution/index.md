---
title: 'Solutio: Clausura in q catena'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $x = 10;
say q:c/$x squared is {$x ** 2}/;
```

🦋 Inveni codicem fontem in archivo [closure-quote.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/closure-quote.raku).

## Exitus

```
$x squared is 100
```

## Commentarii

1. Forma `q` plerumque totum textum ut est servat. Adverbium `:c` (clausura) interpolationem codicis `{ … }` intra eam accendit. Intra uncos `$x` verus codex est, itaque `{$x ** 2}` dat `100`.

1. `$x` extra uncos exacte ut scriptum est manet. Hoc fit quia adverbium scalare `:s` *non* accensum est. Ideo pro quaque proprietate unum adverbium habemus. Codicem in serie accipis, neque etiam interpolationem `$` accendis.

1. Adverbia coniungere potes. Si etiam `:s` addis, primum `$x` quoque interpolatur. Nunc ambae proprietates simul accensae sunt:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
