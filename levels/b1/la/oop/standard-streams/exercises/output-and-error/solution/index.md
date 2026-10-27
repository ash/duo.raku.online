---
title: 'Solutio: Exitus et errores'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my @data = 3, 5, 7;

my $sum = 0;
for @data -> $n {
    $sum += $n;
    $*ERR.say("running total: $sum");
}

$*OUT.say($sum);
```

🦋 Inveni codicem fontem in archivo [output-and-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/output-and-error.raku).

## Exitus

Utrumque fluentum in screen apparet. Primum veniunt summae currentes, et deinde effectus finalis:

```
running total: 3
running total: 8
running total: 15
15
```

Si errorem vulgarem abicis, solus verus exitus manet:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Commentarii

1. `$*OUT` et `$*ERR` sunt tractabula exitus vulgaris et erroris vulgaris. Utrumque propriam methodum `say` habet.

1. Quisque gyrus numerum sequentem addit et summam currentem ad `$*ERR` scribit. Sola summa finalis ad `$*OUT` it. In screen progressus et effectus similes videntur. Sed per diversa fluenta eunt. Itaque cum `2>/dev/null` errorem vulgarem alio mittit, solum finale `15` manet.

{% include nav.html %}
