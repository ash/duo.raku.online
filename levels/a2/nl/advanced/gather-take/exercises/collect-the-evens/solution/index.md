---
title: 'Solution: Elk getal herhalen'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my @result = gather for 1..4 -> $n {
    take $n for 1..$n;
};

say @result;
```

🦋 Je kunt de broncode vinden in het bestand [collect-the-evens.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/collect-the-evens.raku).

## Uitvoer

```
[1 2 2 3 3 3 4 4 4 4]
```

## Opmerkingen

1. Je hebt niet precies één `take` per ronde nodig. Kijk hier naar de binnenste `take $n for 1..$n`. Die voert `take` in elke ronde een ander aantal keren uit. Deze vrijheid maakt `gather`/`take` sterker dan een simpele `map`.

1. De buitenste lus heeft een variabele met een naam, `-> $n`. Dat is met opzet. Stel dat we `$_` gebruiken in de binnenste lus. Dan zet de binnenste `for` zijn eigen teller in `$_`. Zo nemen we de teller, niet het huidige getal.

1. `gather` verzamelt gewoon elke waarde die de code neemt, op volgorde. Zo heeft `@result` één `1`, twee `2`'s, drie `3`'s en vier `4`'s.

{% include nav.html %}
