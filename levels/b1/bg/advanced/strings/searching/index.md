---
title: Търсене в низове
translations_gpt:
---

{% include menu.html %}

Няколко метода ви казват какво съдържа даден низ.

Методът `contains` проверява дали един низ се среща някъде вътре в друг:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Методите `starts-with` и `ends-with` проверяват как започва и как завършва низът:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

За да намерите точната позиция на подниз, използвайте `index`. Той връща позицията на първото съвпадение, като брои от нула:

```raku
say 'Raku'.index('k'); # 2
```

Ако `index` не намери подниза, той връща `Nil` вместо число:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
