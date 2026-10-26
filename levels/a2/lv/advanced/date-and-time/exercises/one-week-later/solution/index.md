---
title: 'Risinājums: Pēc vienas nedēļas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `later(:days(7))` pavirza datumu uz priekšu par septiņām dienām. Tā ir viena nedēļa. Mēs varētu rakstīt arī `+ 7`. Bet ar nosaukto argumentu jūs redzat vienību.

1. 2027. gada februārī ir 28 dienas. Tāpēc datums nedēļu pēc 28. datuma ir martā. Raku pats pāriet uz martu. Rezultāts ir `2027-03-07`.

1. Mēs izsaucam `day-of-week` jaunajam datumam. Tas dod `7`. Ar šo skaitli jūs varat viegli pārbaudīt rezultātu. Tieši nedēļu vēlāk nedēļas diena ir *tā pati*. Un arī `2027-02-28` ir svētdiena (`7`). Tāpēc `7` ir tā atbilde, ko jūs šeit gaidāt.

{% include nav.html %}
