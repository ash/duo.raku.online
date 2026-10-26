---
title: 'Risinājums: Pēc vienas nedēļas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $later = Date.new(2027, 2, 28).later(:days(7));
say $later;
say $later.day-of-week;
```

🦋 Atrodiet programmu failā [one-week-later.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/one-week-later.raku).

## Izvade

```
2027-03-07
7
```

## Komentāri

1. `later(:days(7))` pavirza datumu uz priekšu par septiņām dienām, tas ir, par vienu nedēļu. Mēs varētu rakstīt arī `+ 7`, bet nosauktais arguments skaidri parāda vienību.

1. 2027. gada februārī ir tikai 28 dienas. Tāpēc nedēļu pēc 28. datuma Raku pats pāriet uz martu. Rezultāts ir `2027-03-07`.

1. Ja jaunajam datumam izsaucat `day-of-week`, jūs iegūstat `7`. Tāpēc rezultātu ir viegli pārbaudīt. Tieši nedēļu vēlāk nedēļas dienai jābūt *tai pašai*, kas iepriekš. Un arī `2027-02-28` ir svētdiena (`7`), tāpēc `7` ir tā atbilde, ko jūs gaidāt.

{% include nav.html %}
