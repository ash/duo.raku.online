---
title: 'Solvo: Tago de la semajno'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Vi povas trovi la fontkodon en la dosiero [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Eligo

```
True
```

## Komentoj

1. `day-of-week` donas al la tagoj numerojn de `1` ĝis `7`. Lundo estas `1`, kaj dimanĉo estas `7`. Do la du tagoj de la semajnfino estas `6` kaj `7`.

1. La testo `>= 6` estas `True` por sabato kaj por dimanĉo. Ĝi estas `False` por la aliaj tagoj. La 14-a de februaro 2027 estas dimanĉo. Ĝia numero estas `7`. Do la programo presas `True`.

{% include nav.html %}
