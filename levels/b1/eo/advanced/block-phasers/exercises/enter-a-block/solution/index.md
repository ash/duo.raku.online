---
title: 'Solvo: Eniri blokon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `ENTER` ruliĝas ĉiufoje, kiam la bloko estas enirata, tuj antaŭ ĝia korpo. La buklo eniras sian korpon unufoje ĉe ĉiu paŝo. Do `--entering` estas presata antaŭ ĉiu `body`-linio.

1. Jen la diferenco inter `ENTER` kaj `FIRST`. `FIRST` ruliĝus nur unufoje por la tuta buklo. Sed `ENTER` ruliĝas ĉiufoje, kiam la bloko estas enirata.

{% include nav.html %}
