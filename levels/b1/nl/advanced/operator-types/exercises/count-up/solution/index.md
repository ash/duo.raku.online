---
title: 'Solution: Optellen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `++` is een postfix-operator, wat betekent dat hij na zijn operand komt. In een uitdrukking geeft `$n++` eerst de *oude* waarde `9`. Dat is wat `say` afdrukt. Pas daarna verhoogt hij de variabele.

1. De tweede regel laat zien dat `$n` echt `10` is geworden. De prefix-vorm `++$n` zou eerst één optellen en dan `10` teruggeven.

{% include nav.html %}
