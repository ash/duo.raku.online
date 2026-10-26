---
title: 'Solutio: Una septimana postea'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $later = Date.new(2027, 2, 28).later(:days(7));
say $later;
say $later.day-of-week;
```

🦋 Inveni codicem fontem in archivo [one-week-later.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/one-week-later.raku).

## Exitus

```
2027-03-07
7
```

## Commentarii

1. `later(:days(7))` diem septem diebus promovet, id est unam hebdomadem. Etiam `+ 7` scribere possemus, sed argumentum nominatum unitatem clare ostendit.

1. Februarius 2027 tantum 28 dies habet. Itaque una hebdomade post diem 28 Raku sponte in Martium transit. Eventus est `2027-03-07`.

1. Si `day-of-week` in novo die vocas, `7` accipis. Sic eventum facile probare potes. Exacte una hebdomade post, dies hebdomadis *idem* esse debet ac antea. Et `2027-02-28` quoque est dies Solis (`7`), itaque `7` est responsum quod exspectas.

{% include nav.html %}
