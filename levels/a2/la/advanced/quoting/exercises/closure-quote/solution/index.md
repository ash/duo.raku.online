---
title: 'Solutio: Clausura in q catena'
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Forma `q` plerumque textum ut est servat. Adverbium `:c` (clausura) hoc mutat. Interpolationem codicis `{ … }` in textu accendit. Intra uncos `$x` verus codex est. Itaque `{$x ** 2}` dat `100`.

1. `$x` extra uncos exacte ut est manet. Nam adverbium scalare `:s` *non* accensum est. Hoc est totum consilium: unum adverbium pro quaque proprietate. Codicem in textu accipis. Sed non etiam interpolationem variabilium `$` accendis.

1. Plura adverbia simul adhibere potes. Adde etiam `:s`. Tum Raku etiam primum `$x` interpolat. Nunc ambae proprietates accensae sunt:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
