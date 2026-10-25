---
title: Tipu konvertēšana tipizētajiem mainīgajiem
---

{% include menu.html %}

Tipu ierobežojumi ir noteikumi par mainīgo tipiem. Šie noteikumi ir diezgan stingri. Piemēram, paņemiet mainīgo ar tipu `Int`. Jūs nevarat tam piešķirt `Num` vērtību. Tā ir pat tad, ja vērtība ir vesels skaitlis:

```raku
my Int $x = 42;
# $x = 42e1; # Kļūda
```

Lai pārveidotu vērtību, izmantojiet [vienu no metodēm](/lv/essentials/coercion/#topics-in-this-section).

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
