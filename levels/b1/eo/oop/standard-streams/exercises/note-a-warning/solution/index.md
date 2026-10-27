---
title: 'Solvo: Averto per `note`'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Vi povas trovi la fontkodon en la dosiero [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Eligo

```
Warning: the value is negative
3
```

## Komentoj

1. `note` sendas la averton al norma erarfluo, sed nur se la valoro vere estas negativa. `say` sendas la veran rezulton, la absolutan valoron `3`, al norma eligo.

1. La averto restas sur norma erarfluo. Do ĝi ne miksiĝas en la veran eligon de la programo. Se vi forĵetas norman erarfluon per `2>/dev/null`, restas nur la `3`.

{% include nav.html %}
