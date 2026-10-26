---
title: 'Risinājums: Kārtot ar kolu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 Atrodiet programmu failā [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Izvade

```
(fig pear kiwi apple)
```

## Komentāri

1. Kols nodod `sort` kārtošanas atslēgu. Iekavas ap to nav vajadzīgas.

1. `*.chars` ir Whatever izteiksme, kas nozīmē «katra elementa rakstzīmju skaits». `sort` to lieto kā atslēgu, tāpēc īsākie vārdi ir pirmie. Vispirms nāk `fig` (3), tad `pear` un `kiwi` (4), un tad `apple` (5).

1. `pear` paliek pirms `kiwi`, jo abiem vārdiem ir vienāds garums. Turklāt `sort` ir stabila, un tas nozīmē, ka tā saglabā vienādu atslēgu sākotnējo secību.

{% include nav.html %}
