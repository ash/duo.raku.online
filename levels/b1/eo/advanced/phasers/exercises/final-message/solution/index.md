---
title: 'Solvo: Fina mesaĝo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La `END`-phaser estas skribita antaŭ la buklo, sed ĝi ruliĝas laste. Ĝi ruliĝas, kiam la ĉefa kodo finiĝis. Ĝis tiam, `$count` estis pligrandigita trifoje.

1. La phaser fermas super `$count`, kio signifas, ke ĝi tenas ligon al la variablo. Do ĝi legas la *finan* valoron. Ĝi ne legas la `0` el la linio, kie la phaser aperas. Tio estas la kutima kialo meti resumon en `END`.

{% include nav.html %}
