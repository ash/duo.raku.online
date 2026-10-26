---
title: 'Solutio: Hash subscribere'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my %h = a => 1;
say %h<a>;
```

🦋 Inveni codicem fontem in archivo [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Exitus

```
1
```

## Commentarii

1. Subscriptum `< >` operator postcircumfixus est. Post terminum, id est hash, venit et circum clavem it.

1. `%h<a>` valorem sub clave `a` dat. Ille valor est `1`.

{% include nav.html %}
