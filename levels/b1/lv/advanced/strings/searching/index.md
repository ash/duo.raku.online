---
title: Meklēšana virknēs
---

{% include menu.html %}

Vairākas metodes jums pasaka, ko virkne satur.

Metode `contains` pārbauda, vai viena virkne ir kaut kur citā virknē:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Metodes `starts-with` un `ends-with` pārbauda, kā virkne sākas un beidzas:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Lai atrastu precīzu apakšvirknes pozīciju, izmantojiet `index`. Tā atgriež pirmās atbilstības pozīciju, skaitot no nulles:

```raku
say 'Raku'.index('k'); # 2
```

Ja `index` neatrod apakšvirkni, tā atgriež `Nil`, nevis skaitli:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
