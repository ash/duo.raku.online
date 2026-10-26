---
title: 'Solutio: Dies septimanae'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `day-of-week` diebus numeros ab `1` ad `7` dat. Dies Lunae est `1`, et dies Solis est `7`. Itaque duo dies feriarum sunt `6` et `7`.

1. Probatio `>= 6` est `True` pro die Saturni et pro die Solis. Pro ceteris diebus est `False`. Dies 14 Februarii 2027 est dies Solis. Numerus eius est `7`. Itaque programma `True` imprimit.

{% include nav.html %}
