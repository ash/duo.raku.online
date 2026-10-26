---
title: 'Solvo: Semajnoj ĝis Kristnasko'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Vi povas trovi la fontkodon en la dosiero [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Eligo

```
25 weeks and 6 days
```

## Komentoj

1. Kiam vi subtrahas unu `Date` de alia, vi ricevas la nombron de tagoj inter ili. Ĉi tie ĝi estas `181`. Do vi ne devas mem kalkuli la tagojn en ĉiu monato. La pli malfrua dato estas skribita unue, do la rezulto estas pozitiva.

1. Entjera divido per `div` donas la nombron de tutaj semajnoj: `181 div 7` estas `25`. La modula operatoro `%` donas la tagojn, kiuj restas: `181 % 7` estas `6`.

{% include nav.html %}
