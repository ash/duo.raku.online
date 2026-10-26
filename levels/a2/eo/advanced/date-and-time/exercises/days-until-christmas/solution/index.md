---
title: 'Solvo: Semajnoj ĝis Kristnasko'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Vi povas subtrahi unu `Date` de alia. La rezulto estas la nombro de tagoj inter ili. Ĉi tie ĝi estas `181`. Do vi ne kalkulas mem la tagojn de ĉiu monato. La pli malfrua dato venas unue. Do la rezulto estas pozitiva.

1. La operatoro `div` dividas entjerojn. Ĝi donas la nombron de plenaj semajnoj: `181 div 7` estas `25`. La modula operatoro `%` donas tion, kio restas post la divido. Tiuj estas la ekstraj tagoj: `181 % 7` estas `6`.

{% include nav.html %}
