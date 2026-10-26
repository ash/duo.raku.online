---
title: 'Solution: Optellen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $n = 9;

say $n++;
say $n;
```

🦋 Je kunt de broncode vinden in het bestand [count-up.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/count-up.raku).

## Uitvoer

```
9
10
```

## Opmerkingen

1. `++` is een postfix-operator. Hij komt na zijn operand. In een uitdrukking geeft `$n++` eerst de *oude* waarde, `9`. Dat drukt `say` af. Pas daarna telt `++` 1 bij de variabele op.

1. De tweede regel laat zien dat `$n` nu `10` is. De prefix-vorm `++$n` werkt anders. Die telt eerst 1 op, en dan geeft hij `10` terug.

{% include nav.html %}
