---
title: 'Solvo: Fina mesaĝo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Vi povas trovi la fontkodon en la dosiero [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Eligo

```
processed 3 items
```

## Komentoj

1. La `END`-phaser venas antaŭ la buklo en la kodo. Sed ĝi ruliĝas laste, post la ĉefa kodo. Ĝis tiam, la buklo jam aldonis 1 al `$count` trifoje.

1. La phaser tenas ligon al la variablo `$count`. Do ĝi legas la *finan* valoron de la variablo. Ĝi ne legas la `0` el la linio de la phaser. Tio estas la kutima kialo meti resumon en `END`.

{% include nav.html %}
