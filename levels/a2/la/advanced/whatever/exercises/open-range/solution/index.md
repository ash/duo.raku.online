---
title: 'Solutio: Intervallum apertum'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Primi valores, `2, 4`, gradum statuunt. Quisque numerus duobus maior est quam prior. Stella sola in fine significat seriem numquam desinere.

1. `head(4)` solum primos quattuor valores capit: `2, 4, 6, 8`. Series pigra est. Itaque Raku reliquum infinitum numquam computat. Hic stella sola «quidquid, sine ullo termino superiore» significat.

{% include nav.html %}
