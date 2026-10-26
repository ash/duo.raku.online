---
title: 'Metode `.raku`'
---

{% include menu.html %}

Trešā attēlojuma metode ir `.raku`. Tā atgriež virkni ar vērtības **kodam līdzīgu** attēlojumu. Ideālā gadījumā jūs varētu ielīmēt šo virkni programmā un atkal iegūt to pašu vērtību. Katrai vērtībai Raku valodā ir šī metode.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Ievērojiet, ka virkne `'Raku'` atgriežas ar pēdiņām ap to. Tāpēc jūs varat ātri redzēt atšķirību starp skaitli un virkni. Tieši tādas detaļas jums vajag, kad jūs atkļūdojat.

Metode darbojas arī ar saliktiem datiem, pat ar ligzdotām struktūrām:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

Tā kā `.raku` atgriež parastu virkni, jūs varat to izmantot visur, kur gaida virkni. Piemēram, jūs varat to ievietot virknē dubultpēdiņās:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Izmantojiet `.raku`, kad jums vajag kodam līdzīgo attēlojumu kā virkni. Tad jūs varat to apvienot ar saviem ziņojumiem. Ļoti drīz mēs iepazīstināsim ar `dd`. Šis Rakudo rīks izdrukā tāda paša veida attēlojumu jūsu vietā vienā solī.

{% include nav.html %}
