---
title: 'Izmantojot `unit sub`'
---

{% include menu.html %}

`unit sub` konstrukcija ir ļoti ērta. Tā padara pārējo failu par funkcijas ķermeni! Ar `MAIN` tā ļauj noņemt figūriekavas, kas aptver gandrīz visu failu. Jums arī nav vajadzīga liekā atkāpe.

Šis programmas piemērs parāda, kā izmantot `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "Summa no $a un $b ir $sum.";
```

Šajā failā `MAIN` ir vienīgā funkcija. Ja tā ir arī jūsu programmā, padomājiet par `unit sub MAIN` izmantošanu, kā parādīts augstāk.

{% include nav.html %}
