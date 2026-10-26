---
title: 'Solutio: Una septimana postea'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `later(:days(7))` diem septem diebus promovet. Haec est una hebdomas. Etiam `+ 7` scribere possumus. Sed cum argumento nominato unitatem vides.

1. Februarius 2027 habet 28 dies. Itaque dies una hebdomade post diem 28 in Martio est. Raku sponte in Martium transit. Eventus est `2027-03-07`.

1. `day-of-week` in novo die vocamus. Dat `7`. Hoc numero eventum facile probare potes. Exacte una hebdomade post, dies hebdomadis *idem* est. Et `2027-02-28` quoque est dies Solis (`7`). Itaque `7` hic est responsum quod exspectas.

{% include nav.html %}
