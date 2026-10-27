---
title: 'Risinājums: Izveidojiet direktoriju'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Atrodiet programmu failā [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Izvade

```
True
True
```

## Komentāri

1. `mkdir` izveido direktoriju. `.IO.d` parāda, ka `reports` ir direktorija.

1. Tagad direktorija eksistē. Tāpēc mēs varam tajā ierakstīt failu. Tam mēs dodam ceļu ar direktorijas nosaukumu: `reports/data.txt`. Tad mēs pārbaudām šo ceļu ar `.e`. Pārbaude parāda, ka fails ir jaunajā direktorijā.

1. Secība ir svarīga. `spurt` **neizveido** trūkstošas direktorijas jūsu vietā. Pamēģiniet rakstīt failā `reports/data.txt`, pirms direktorija `reports` eksistē. Jūs saņemat tādu kļūdu kā `Failed to open file … : No such file or directory`. Tāpēc vispirms izveidojiet direktoriju, kā to šeit dara `mkdir`. Tad rakstīšana izdodas. Un `mkdir` ir vēl viena laba īpašība. Tā izveido arī trūkstošas direktorijas ceļa vidū. Piemēram, `mkdir 'reports/2026'` vienā izsaukumā izveido visu direktoriju ķēdi.

{% include nav.html %}
