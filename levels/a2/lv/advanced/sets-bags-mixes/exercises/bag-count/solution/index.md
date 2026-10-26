---
title: 'Risinājums: Saskaitīt somā'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Atrodiet programmu failā [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Izvade

```
2
6
```

## Komentāri

1. `'the cat sat on the mat'.words` dod sešus vārdus. `bag` saskaita katru vārdu. Indekss `<the>` atgriež, cik reižu maiss redzēja `the`. Atbilde ir divi.

1. Metode `total` saskaita visus skaitus. Šī summa ir vārdu skaits maisā: `6`.

{% include nav.html %}
