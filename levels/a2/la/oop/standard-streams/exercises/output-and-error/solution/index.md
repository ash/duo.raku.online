---
title: 'Solutio: Exitus et errores'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

Utrumque fluentum in screen vides. Primum veniunt summae currentes, deinde effectus finalis:

```
running total: 3
running total: 8
running total: 15
15
```

Hic errorem vulgarem abicimus. Solus verus exitus manet:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Commentarii

1. `$*OUT` est tractabulum exitus vulgaris. `$*ERR` est tractabulum erroris vulgaris. Utrumque propriam methodum `say` habet.

1. Quisque gyrus anuli numerum sequentem addit. Deinde summam currentem ad `$*ERR` scribit. Sola summa finalis ad `$*OUT` it. In screen progressus et effectus similes videntur. Sed per diversa fluenta eunt. `2>/dev/null` errorem vulgarem alio mittit. Itaque solum finale `15` manet.

{% include nav.html %}
