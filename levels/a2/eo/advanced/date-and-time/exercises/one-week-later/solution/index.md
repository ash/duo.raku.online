---
title: 'Solvo: Unu semajnon poste'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $later = Date.new(2027, 2, 28).later(:days(7));
say $later;
say $later.day-of-week;
```

🦋 Vi povas trovi la fontkodon en la dosiero [one-week-later.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/one-week-later.raku).

## Eligo

```
2027-03-07
7
```

## Komentoj

1. `later(:days(7))` movas la daton antaŭen je sep tagoj. Tio estas unu semajno. Ni ankaŭ povus skribi `+ 7`. Sed kun la nomita argumento, vi vidas la unuon.

1. Februaro 2027 havas 28 tagojn. Do la dato unu semajnon post la 28-a estas en marto. Raku iras en marton per si mem. La rezulto estas `2027-03-07`.

1. Ni vokas `day-of-week` sur la nova dato. Ĝi donas `7`. Per ĉi tiu nombro, vi povas facile kontroli la rezulton. Ĝuste unu semajnon poste, la tago de la semajno estas la *sama*. Kaj `2027-02-28` ankaŭ estas dimanĉo (`7`). Do `7` estas la respondo, kiun vi atendas ĉi tie.

{% include nav.html %}
