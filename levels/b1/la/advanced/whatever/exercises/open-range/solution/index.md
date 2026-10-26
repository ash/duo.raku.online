---
title: 'Solutio: Intervallum apertum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
say (2, 4 ... *).head(4);
```

🦋 Inveni codicem fontem in archivo [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Exitus

```
(2 4 6 8)
```

## Commentarii

1. Valores initiales `2, 4` gradum arithmeticum statuunt: quisque novus numerus duobus maior est. `*` per se in fine significat seriem numquam desinere.

1. `head(4)` solum primos quattuor valores capit, `2, 4, 6, 8`. Series pigra est, itaque reliquum infinitum numquam computatur. Hic stella per se «quidquid, sine ullo termino superiore» significat.

{% include nav.html %}
