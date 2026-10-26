---
title: Somas un maisījumi
translations_gpt:
---

{% include menu.html %}

Kopa jums pasaka tikai to, _vai_ vērtība tajā ir. Bet dažreiz jums vajag zināt arī, _cik reižu_ vērtība tur ir. Tam ir `Bag`, kas katrai vērtībai glabā skaitu.

Maisu izveido ar rutīnu `bag`. Atkārtotas vērtības nekļūst par vienu vērtību. Tā vietā tās tiek saskaitītas:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Jūs varat prasīt maisam vērtību ar indeksu `< >`. Tad jūs uzzināt, cik reižu šī vērtība tajā ielikta. Metode `total` dod visu skaitu summu:

```raku
say bag(<a b a c a>).total; # 5
```

`Mix` ir tā pati ideja, kas maiss. Atšķirība ir tā, ka skaiti, ko sauc par _svariem_, var būt daļskaitļi, ne tikai veseli skaitļi. Lai svarus norādītu paši, savienojiet katru vērtību pārī ar tās svaru. Pēc tam pārvērtiet sarakstu par maisījumu ar `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Svaru jūs uzmeklējat ar `< >`, un svarus saskaitāt ar `total`. Abi darbojas tieši tāpat kā maisam. Vienīgā atšķirība ir tā, ka skaitļiem nav jābūt veseliem. Šeit `total` saskaita svarus `2.5` un `0.75`, kas dod `3.25`. Tā ir svaru summa, nevis vērtību skaits. Maisi un maisījumi noder ikreiz, kad jāseko līdzi daudzumiem. Piemēram, jūs varat saskaitīt, cik bieži katrs vārds parādās tekstā. Vai arī jūs varat dot svarus izvēles variantiem.

{% include nav.html %}
