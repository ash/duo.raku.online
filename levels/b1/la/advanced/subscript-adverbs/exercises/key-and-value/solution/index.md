---
title: 'Solutio: Clavis et valor'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Inveni codicem fontem in archivo [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Exitus

```
(x 10)
```

## Commentarii

1. Adverbium `:kv` tibi et clavem et valorem in lista dat.

1. In tabula clavis est nomen quod in subscripto adhibes. Itaque `%h<x>:kv` listam `(x 10)` dat.

{% include nav.html %}
