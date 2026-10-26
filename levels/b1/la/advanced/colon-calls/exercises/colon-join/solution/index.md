---
title: 'Solutio: Iungere cum duplo puncto'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
say <a b c>.reverse.join: '-';
```

🦋 Inveni codicem fontem in archivo [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Exitus

```
c-b-a
```

## Commentarii

1. `.reverse` in medio catenae est, itaque formam suam usitatam servat. `join` ultima venit, itaque colono uti potest. `'-'` eodem prorsus modo tradit ac `join('-')`.

1. Index inversus, `c, b, a`, deinde lineolis coniungitur, quod `c-b-a` dat. Forma cum colono cum valoribus ordinariis operatur, non solum cum codicibus clausis.

{% include nav.html %}
