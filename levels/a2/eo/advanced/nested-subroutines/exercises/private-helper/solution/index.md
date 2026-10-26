---
title: 'Solvo: Privata helpanto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Vi povas trovi la fontkodon en la dosiero [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Eligo

```
16
```

## Komentoj

1. La helpanto `double` estas ene de `stats`. Do vi povas vidi ĝin nur tie. Aliaj partoj de la programo ne povas voki ĝin.

1. `stats` uzas ĝin dufoje. `double(3)` estas `6`, kaj `double(5)` estas `10`. Ilia sumo estas `16`.

{% include nav.html %}
