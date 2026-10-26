---
title: 'Solvo: Eniri blokon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Eligo

```
--entering
body 1
--entering
body 2
```

## Komentoj

1. `ENTER` ruliĝas ĉiufoje, kiam la programo eniras la blokon. Ĝi ruliĝas tuj antaŭ la korpo. La buklo eniras sian korpon unufoje en ĉiu rondo. Do la programo presas `--entering` antaŭ ĉiu linio `body`.

1. Jen la diferenco inter `ENTER` kaj `FIRST`. Kun `FIRST`, la kodo ruliĝas nur unufoje por la tuta buklo. `ENTER` ruliĝas ĉiufoje, kiam la programo eniras la blokon.

{% include nav.html %}
