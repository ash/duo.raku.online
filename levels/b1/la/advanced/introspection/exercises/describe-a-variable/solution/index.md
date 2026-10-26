---
title: 'Solutio: Variabilem describere'
translations_gpt: Solutio exercitationis 'Describe variabilem'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `.^name` typum valoris in receptaculo dat, qui est `Str`.

1. `.VAR` receptaculum post variabilem dat. Deinde `.^name` in eo `Scalar` reddit, qui est typus receptaculi ipsius.

1. `.VAR.name` nomen variabilis reddit, `$lang`, cum sigillo eius. Nota hanc esse methodum `name`. Non est meta-methodus `^name` quam in primis duabus lineis adhibuimus.

{% include nav.html %}
