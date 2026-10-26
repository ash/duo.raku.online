---
title: 'Solutio: Structuram datae dump'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis huius operis.

## Codex

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Inveni codicem fontem in archivo [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Exitus

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Commentarii

1. `dd @data` contenta ordinis in forma codici simili imprimit. Hoc output ad flumen erroris normalis venit.

1. Methodus `.raku` eandem repraesentationem ut seriem reddit. Haec series deinde in nuntium normalem inseritur, cum codice intra uncos curvos. Deinde `say` nuntium ad flumen output normalis imprimit.

1. Duae lineae hic idem apparent, sed per diversa flumina output eunt. Prima a `dd` venit et ad errorem normalem it. Secunda a `say` venit et ad flumen output normalis it. Compara sequentia:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
