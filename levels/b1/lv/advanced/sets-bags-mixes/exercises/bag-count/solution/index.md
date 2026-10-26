---
title: 'Risinājums: Saskaitīt somā'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `'the cat sat on the mat'.words` dod sešus vārdus, un `bag` saskaita katru no tiem. Indekss `<the>` atgriež, cik reižu `the` ir redzēts, proti, divreiz.

1. Metode `total` saskaita visus skaitus. Tas ir tas pats, kas maisā ielikto vārdu skaits, `6`.

{% include nav.html %}
