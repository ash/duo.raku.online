---
title: 'Solutio: Quot digiti'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Raku `2 ** 1000` exacte computat. Numerum non rotundat neque superfluit, quia numeri integri praecisionem arbitrariam habent.

1. `chars` plerumque methodus chordarum est. Cum eam in numero integro vocas, primum numerum in textum decimalem convertit. Deinde characteres numerat. Hic nullum signum minus et nullum punctum decimale est. Itaque numerus characterum exacte est numerus digitorum, `302`.

{% include nav.html %}
