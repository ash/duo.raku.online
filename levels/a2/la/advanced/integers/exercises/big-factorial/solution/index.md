---
title: 'Solutio: Quot digiti'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
say (2 ** 1000).chars;
```

🦋 Inveni codicem fontem in archivo [big-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/big-factorial.raku).

## Exitus

```
302
```

## Commentarii

1. Numeri integri in Raku nullum limitem magnitudinis habent. Itaque Raku exactum valorem `2 ** 1000` invenit. Numerum non rotundat. Numerus non superfluit.

1. Plerumque `chars` methodus chordarum est. Eam etiam in numero integro vocare potes. Tum primum numerum in textum convertit, in basi 10. Deinde characteres numerat. Hic numerus neque signum minus neque punctum decimale habet. Itaque numerus characterum est numerus digitorum: `302`.

{% include nav.html %}
