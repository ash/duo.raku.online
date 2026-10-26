---
title: 'Solvo: Tago de la semajno'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `day-of-week` donas al lundo la numeron `1` kaj al dimanĉo la numeron `7`. Do la du tagoj de la semajnfino estas ĝuste `6` kaj `7`.

1. La testo `>= 6` donas `True` en sabato kaj en dimanĉo. En ĉiu alia tago, ĝi donas `False`. La 14-a de februaro 2027 estas dimanĉo (`7`), do la programo presas `True`.

{% include nav.html %}
