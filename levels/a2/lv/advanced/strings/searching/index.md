---
title: Meklēšana virknēs
---

{% include menu.html %}

Dažas metodes jums pasaka, kas ir virknē.

Metode `contains` pārbauda, vai viena virkne ir citas virknes iekšā. Tā var būt jebkurā vietā:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Metode `starts-with` pārbauda virknes sākumu. Metode `ends-with` pārbauda beigas:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Vai jums vajag precīzu virknes daļas pozīciju? Tad izmantojiet `index`. Tā atgriež pirmās atbilstības pozīciju. Tā skaita no nulles:

```raku
say 'Raku'.index('k'); # 2
```

Dažreiz `index` nevar atrast daļu. Tad tā atgriež `Nil`, nevis skaitli:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
