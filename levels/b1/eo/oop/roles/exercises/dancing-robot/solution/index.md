---
title: 'Solvo: Dancanta roboto'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
role Dancing {
    method dance {
        'spinning around';
    }
}

class Robot {
    method speak {
        'beep';
    }
}

my $plain   = Robot.new;
my $dancing = Robot.new but Dancing;

say $plain.speak;
say $dancing.speak;
say $dancing.dance;
```

🦋 Vi povas trovi la fontkodon en la dosiero [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Eligo

```
beep
beep
spinning around
```

## Komentoj

1. Malsame ol en la pli fruaj ekzemploj, `Dancing` ne anstataŭigas ekzistantan metodon. Anstataŭe, ĝi alportas tute novan metodon `dance`, pri kiu `Robot` scias nenion.

1. `Robot.new but Dancing` enmiksas la rolon en unu solan objekton je rultempo. Do `$dancing` povas kaj `speak` (el la klaso) kaj `dance` (el la rolo). La simpla `$plain` lernis nur `speak`.

1. La kroma kapablo apartenas al tiu unu objekto, ne al la klaso `Robot`. Voko de `$plain.dance` estus eraro, ĉar `$plain` neniam ricevis la rolon.

{% include nav.html %}
