---
title: 'Solution: Elk getal herhalen'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Nergens staat dat er maar één `take` per ronde mag zijn. Hier voert de binnenste `take $n for 1..$n` de `take` in elke ronde een ander aantal keren uit. Juist deze flexibiliteit maakt `gather`/`take` krachtiger dan een simpele `map`.

1. De buitenste lus gebruikt met opzet een benoemde variabele, `-> $n`. Stel dat we `$_` in de binnenste lus zouden gebruiken. Dan zou de binnenste `for` zijn eigen teller in `$_` zetten. Zo zouden we de teller nemen in plaats van het huidige getal.

1. `gather` verzamelt gewoon elke waarde die genomen is, op volgorde. Daarom bevat `@result` eerst `1`, dan twee `2`'s, dan drie `3`'s en dan vier `4`'s.

{% include nav.html %}
