---
title: Tipu konvertēšana tipizētajiem mainīgajiem
---

{% include menu.html %}

Tipu ierobežojumi ir diezgan stingri. Piemēram, jūs nevarat piešķirt `Num` vērtību mainīgajam, kas deklarēts kā `Int`. Tā ir pat tad, ja vērtība ir vesels skaitlis:

```raku
my Int $x = 42;
# $x = 42e1; # Kļūda
```

Izmantojiet [vienu no metodēm](/lv/essentials/coercion/#topics-in-this-section), lai pārveidotu vērtību uz pareizo tipu.

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
