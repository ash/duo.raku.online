---
title: 'Solutio: Valor absolutus'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Inveni codicem fontem in archivo [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Exitus

```
7
4
```

## Commentarii

1. Primus candidatus solum pro numeris negativis operatur. Numerum cum signo contrario reddit. Hic valor positivus est.

1. Omnes alii numeri ad secundum candidatum eunt. Hi sunt zero et numeri positivi. Secundus candidatus valorem reddit ut est.

{% include nav.html %}
