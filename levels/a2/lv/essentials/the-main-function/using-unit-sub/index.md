---
title: 'Izmantojot `unit sub`'
---

{% include menu.html %}

Ar `unit sub` pārējais fails kļūst par funkcijas ķermeni! Tas ir ļoti noderīgi ar `MAIN`. Bez tā figūriekavas aptver gandrīz visu failu. Ar `unit sub` jums šīs iekavas nav vajadzīgas. Arī rindām sākumā nav vajadzīgas liekas atstarpes.

Šeit ir programmas piemērs ar `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "Summa no $a un $b ir $sum.";
```

Šajā failā `MAIN` ir vienīgā funkcija. Vai tā ir arī jūsu programmā? Tad mēģiniet izmantot `unit sub MAIN`, kā piemērā augstāk.

{% include nav.html %}
