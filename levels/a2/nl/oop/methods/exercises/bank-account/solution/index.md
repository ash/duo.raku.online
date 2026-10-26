---
title: 'Oplossing: Een lopende robot'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
class Robot {
    has $.position is rw = 0;

    method move($steps = 1) {
        $.position += $steps;
    }
}

my $r = Robot.new;
$r.move(5);
$r.move;
$r.move(2);

say $r.position;
```

🦋 Je kunt de broncode vinden in het bestand [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Uitvoer

```
8
```

## Opmerkingen

1. Het attribuut `position` heeft `is rw`. Dus kan de methode het veranderen. Zijn standaardwaarde is `0`, dus een nieuwe robot begint in de oorsprong.

1. De methode `move` geeft haar parameter een standaardwaarde: `$steps = 1`. Dus verplaatst `$r.move` zonder argument de robot één stap. `$r.move(5)` en `$r.move(2)` verplaatsen hem met het gegeven aantal. De drie aanroepen tellen `5 + 1 + 2` op. Dus is de laatste positie `8`.

{% include nav.html %}
