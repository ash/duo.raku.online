---
title: 'Solutio: Dies septimanae'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Inveni codicem fontem in archivo [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Exitus

```
True
```

## Commentarii

1. `day-of-week` diei Lunae numerum `1` dat et diei Solis numerum `7`. Itaque duo dies feriarum sunt exacte `6` et `7`.

1. Probatio `>= 6` dat `True` die Saturni et die Solis. Omni alio die dat `False`. Dies 14 Februarii 2027 est dies Solis (`7`), itaque programma `True` imprimit.

{% include nav.html %}
