---
title: 'Solutio: Valor absolutus'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Primus candidatus solum numeris negativis congruit. Valorem cum signo contrario reddit, qui positivus est.

1. Omnes alii numeri, id est zero et numeri positivi, ad secundum candidatum eunt. Valorem sine ulla mutatione reddit.

{% include nav.html %}
