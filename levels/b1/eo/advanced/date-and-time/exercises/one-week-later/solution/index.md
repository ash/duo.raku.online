---
title: 'Solvo: Unu semajnon poste'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `later(:days(7))` movas la daton antaŭen je sep tagoj, kio estas unu semajno. Ni ankaŭ povus skribi `+ 7`, sed la nomita argumento klare montras la unuon.

1. Februaro 2027 havas nur 28 tagojn. Do unu semajnon post la 28-a, Raku per si mem iras en marton. La rezulto estas `2027-03-07`.

1. Se vi vokas `day-of-week` sur la nova dato, vi ricevas `7`. Tiel estas facile kontroli la rezulton. Ĝuste unu semajnon poste, la tago de la semajno devas esti la *sama* kiel antaŭe. Kaj `2027-02-28` ankaŭ estas dimanĉo (`7`), do `7` estas la respondo, kiun vi atendas.

{% include nav.html %}
