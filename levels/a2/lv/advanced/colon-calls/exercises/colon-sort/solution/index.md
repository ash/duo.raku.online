---
title: 'Risinājums: Kārtot ar kolu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Kols iedod `sort` kārtošanas atslēgu. Iekavas ap to jums nav vajadzīgas.

1. `*.chars` ir Whatever izteiksme. Tā nozīmē «katra elementa rakstzīmju skaits». `sort` to lieto kā atslēgu. Tāpēc īsākais vārds ir pirmais: `fig` (3). Tad nāk `pear` un `kiwi` (4). Tad nāk `apple` (5).

1. `pear` paliek pirms `kiwi`. Abiem vārdiem ir vienāds garums. Un `sort` ir stabila. Tā patur veco secību elementiem ar vienādām atslēgām.

{% include nav.html %}
