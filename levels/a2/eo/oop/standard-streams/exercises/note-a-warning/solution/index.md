---
title: 'Solvo: Averto per `note`'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `note` sendas la averton al norma erarfluo. Ĝi faras tion nur, kiam la valoro vere estas negativa. `say` sendas la veran rezulton al norma eligo. La rezulto estas la absoluta valoro, `3`.

1. La averto iras al norma erarfluo. Do ĝi ne eniras la veran eligon de la programo. `2>/dev/null` forĵetas norman erarfluon. Tiam restas nur la `3`.

{% include nav.html %}
