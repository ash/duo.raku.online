---
title: 'Solutio: Adiutor privatus'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Codicem fontem in archivo [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku) invenire potes.

## Exitus

```
16
```

## Commentarii

1. Auxiliaris `double` intra `stats` definita est, itaque solum ibi visibilis est. Nulla alia pars programmatis eam vocare potest.

1. `stats` eam bis adhibet: `double(3)` est `6`, et `double(5)` est `10`. Summa eorum est `16`.

{% include nav.html %}
