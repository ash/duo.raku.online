---
title: 'Oplossing: Een lopende robot'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Het attribuut `position` heeft `is rw`, dus de methode kan het veranderen. Zijn standaardwaarde is `0`, dus een nieuwe robot begint in de oorsprong.

1. De methode `move` geeft haar parameter een standaardwaarde, `$steps = 1`. Dus gaat de aanroep `$r.move` zonder argument één stap vooruit. Maar `$r.move(5)` en `$r.move(2)` gaan het gegeven aantal stappen vooruit. De drie aanroepen tellen op tot `5 + 1 + 2`, dus de eindpositie is `8`.

{% include nav.html %}
