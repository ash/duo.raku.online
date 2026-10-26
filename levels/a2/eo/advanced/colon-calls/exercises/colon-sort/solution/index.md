---
title: 'Solvo: Ordigi per dupunkto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 Vi povas trovi la fontkodon en la dosiero [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Eligo

```
(fig pear kiwi apple)
```

## Komentoj

1. La dupunkto donas la ordigan ŝlosilon al `sort`. Vi ne bezonas krampojn ĉirkaŭ ĝi.

1. `*.chars` estas Whatever-esprimo. Ĝi signifas “la nombro de signoj de ĉiu elemento”. `sort` uzas ĝin kiel la ŝlosilon. Do la plej mallonga vorto venas unue: `fig` (3). Poste venas `pear` kaj `kiwi` (4). Fine venas `apple` (5).

1. `pear` restas antaŭ `kiwi`. Ambaŭ vortoj havas la saman longon. Kaj `sort` estas stabila. Ĝi konservas la malnovan ordon de elementoj kun egalaj ŝlosiloj.

{% include nav.html %}
