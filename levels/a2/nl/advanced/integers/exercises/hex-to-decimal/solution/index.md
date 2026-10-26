---
title: 'Solution: Hex naar decimaal'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $n = :16<1A>;

say $n;
say $n.base(16);
```

🦋 Je kunt de broncode vinden in het bestand [hex-to-decimal.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/hex-to-decimal.raku).

## Uitvoer

```
26
1A
```

## Opmerkingen

1. De radix-vorm `:16<1A>` leest `1A` als een getal in grondtal 16. De waarde is `1 × 16 + 10 = 26`. Nu bevat de variabele `$n` deze waarde als een gewoon geheel getal.

1. `$n.base(16)` maakt van het gehele getal weer een string in grondtal 16. Het resultaat is weer `1A`. Lezen in een talstelsel en afdrukken in een talstelsel zijn dus tegenovergesteld.

{% include nav.html %}
