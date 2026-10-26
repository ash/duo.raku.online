---
title: 'Solutio: Variabilem describere'
translations_gpt: Solutio exercitationis 'Describe variabilem'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Inveni codicem fontem in archivo [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Exitus

```
Str
Scalar
$lang
```

## Commentarii

1. `.^name` typum valoris in receptaculo reddit. Hic typus est `Str`.

1. `.VAR` receptaculum post variabilem reddit. `.^name` in receptaculo `Scalar` reddit. Hic est typus receptaculi ipsius.

1. `.VAR.name` nomen variabilis cum sigillo reddit: `$lang`. Nota: haec est methodus `name`. Non est meta-methodus `^name` ex primis duabus lineis.

{% include nav.html %}
