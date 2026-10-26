---
title: 'Solvo: Marŝanta roboto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Eligo

```
8
```

## Komentoj

1. La atributo `position` havas `is rw`. Do la metodo povas ŝanĝi ĝin. Ĝia defaŭlto estas `0`, do nova roboto komenciĝas ĉe la origino.

1. La metodo `move` donas al sia parametro defaŭltan valoron: `$steps = 1`. Do `$r.move` sen argumento movas la roboton unu paŝon. `$r.move(5)` kaj `$r.move(2)` movas ĝin je la donita nombro. La tri vokoj aldonas `5 + 1 + 2`. Do la lasta pozicio estas `8`.

{% include nav.html %}
