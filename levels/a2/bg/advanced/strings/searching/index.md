---
title: Търсене в низове
translations_gpt:
---

{% include menu.html %}

Някои методи ви казват какво има в даден низ.

Методът `contains` проверява дали един низ е вътре в друг низ. Той може да е на всяко място:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Методът `starts-with` проверява началото на низ. Методът `ends-with` проверява края:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Трябва ли ви точната позиция на част от низ? Тогава използвайте `index`. Той връща позицията на първото съвпадение. Той брои от нула:

```raku
say 'Raku'.index('k'); # 2
```

Понякога `index` не може да намери частта. Тогава той връща `Nil`, а не число:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
