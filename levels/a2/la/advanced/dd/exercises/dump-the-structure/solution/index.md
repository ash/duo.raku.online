---
title: 'Solutio: Structuram datae dump'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

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

1. `dd @data` contenta ordinis imprimit. Ea in forma codici simili imprimit. Hoc output ad flumen erroris normalis venit.

1. Methodus `.raku` eandem formam ut seriem reddit. Programma hanc seriem in nuntium normalem ponit. Ad hoc codicem intra seriem exsequitur. Deinde `say` nuntium ad flumen output normalis imprimit.

1. Hic duae lineae idem apparent. Sed in diversa flumina output eunt. Prima linea a `dd` venit et ad errorem normalem it. Secunda linea a `say` venit et ad flumen output normalis it. Compara hos duos cursus:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
