---
title: 'Solutio: Iungere cum duplo puncto'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

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

1. `.reverse` in medio catenae est. Itaque formam ordinariam servat. `join` ultima vocatio est. Itaque colono uti potest. Colon `'-'` ei tradit, sicut `join('-')`.

1. Post `.reverse` index est `c, b, a`. Tum `join` lineolas inter verba ponit. Exitus est `c-b-a`. Forma cum colono etiam cum valoribus ordinariis operatur, non solum cum codicibus clausis.

{% include nav.html %}
