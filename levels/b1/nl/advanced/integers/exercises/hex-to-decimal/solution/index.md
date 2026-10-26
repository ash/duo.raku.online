---
title: 'Solution: Hex naar decimaal'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De radix-vorm `:16<1A>` leest `1A` als een getal in grondtal 16. Dat is `1 × 16 + 10 = 26`. Nu bevat de variabele `$n` een gewoon geheel getal.

1. `$n.base(16)` zet dat gehele getal weer om naar een string in grondtal 16, en dat geeft weer `1A`. Dit laat zien dat lezen in een talstelsel en afdrukken in een talstelsel tegenovergestelde bewerkingen zijn.

{% include nav.html %}
