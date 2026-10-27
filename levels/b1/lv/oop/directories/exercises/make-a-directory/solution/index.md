---
title: 'Risinājums: Izveidojiet direktoriju'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `mkdir` izveido direktoriju, un `.IO.d` parāda, ka `reports` tiešām ir direktorija.

1. Direktorija tagad eksistē, tāpēc mēs varam tajā ierakstīt failu. Tam mēs norādām ceļu, kurā ir direktorijas nosaukums: `reports/data.txt`. Pēc tam `.e` uz šī ceļa parāda, ka fails tagad ir jaunajā direktorijā.

1. Secībai ir nozīme: `spurt` **neizveido** trūkstošas direktorijas jūsu vietā. Pamēģiniet rakstīt failā `reports/data.txt`, pirms direktorija `reports` eksistē. Tas neizdodas ar tādu kļūdu kā `Failed to open file … : No such file or directory`. Rakstīšana izdodas tikai tāpēc, ka `mkdir` vispirms izveido direktoriju. Par laimi, `mkdir` izveido arī visas trūkstošās direktorijas ceļa vidū. Tāpēc ar ligzdotu ceļu, kā `mkdir 'reports/2026'`, viens izsaukums uzbūvē visu ķēdi.

{% include nav.html %}
