---
title: 'Metode `.raku`'
---

{% include menu.html %}

Trešā metode ir `.raku`. Tā atgriež virkni ar vērtības **kodam līdzīgu** formu. Labākajā gadījumā jūs varat ielīmēt šo virkni programmā. Tad jūs atkal iegūstat to pašu vērtību. Katrai vērtībai Raku valodā ir šī metode.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Aplūkojiet virkni `'Raku'`. Tā atgriežas ar pēdiņām ap to. Tāpēc skaitlis un virkne izskatās atšķirīgi. Jums vajag šādas detaļas, kad jūs atkļūdojat programmu.

Metode strādā arī ar datiem, kam ir daudz daļu. Tā strādā arī ar ligzdotiem datiem, kur viena struktūra ir citā:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

`.raku` atgriež parastu virkni. Tāpēc jūs varat to lietot katrā vietā, kur vajag virkni. Piemēram, jūs varat to ielikt virknē dubultpēdiņās:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Lietojiet `.raku`, kad jums vajag šo formu kā virkni. Tad jūs varat to pievienot saviem ziņojumiem. Ļoti drīz jūs iepazīsiet `dd`. Tas ir Rakudo rīks. Tas izdrukā tādu pašu formu jūsu vietā vienā solī.

{% include nav.html %}
