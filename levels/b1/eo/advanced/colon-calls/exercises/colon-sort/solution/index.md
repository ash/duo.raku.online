---
title: 'Solvo: Ordigi per dupunkto'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La dupunkto transdonas la ordigan ŝlosilon al `sort`. Ne necesas krampoj ĉirkaŭ ĝi.

1. `*.chars` estas Whatever-esprimo, kiu signifas “la nombro de signoj de ĉiu elemento”. `sort` uzas ĝin kiel la ŝlosilon, do la plej mallongaj vortoj venas unue. Unue venas `fig` (3), poste `pear` kaj `kiwi` (4), kaj poste `apple` (5).

1. `pear` restas antaŭ `kiwi`, ĉar ambaŭ vortoj havas la saman longon. Krome, `sort` estas stabila, kio signifas, ke ĝi konservas la originalan ordon de egalaj ŝlosiloj.

{% include nav.html %}
