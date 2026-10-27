---
title: 'Solvo: Dancanta roboto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Ĉi tio ne estas kiel la pli fruaj ekzemploj. `Dancing` ne anstataŭigas metodon, kiu jam ekzistas. Ĝi alportas tute novan metodon, `dance`. La klaso `Robot` scias nenion pri ĉi tiu metodo.

1. `Robot.new but Dancing` enmiksas la rolon en unu solan objekton. Tio okazas dum la programo ruliĝas. Do `$dancing` povas fari du aferojn. Ĝi povas `speak`, el la klaso. Ĝi ankaŭ povas `dance`, el la rolo. La simpla `$plain` konas nur `speak`.

1. La nova kapablo apartenas nur al ĉi tiu unu objekto. Ĝi ne apartenas al la klaso `Robot`. Do `$plain.dance` donas eraron. `$plain` neniam ricevis la rolon.

{% include nav.html %}
