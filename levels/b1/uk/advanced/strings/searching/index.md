---
title: Пошук у рядках
translations_gpt:
---

{% include menu.html %}

Кілька методів кажуть вам, що містить рядок.

Метод `contains` перевіряє, чи є один рядок будь-де всередині іншого:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Методи `starts-with` та `ends-with` перевіряють, як рядок починається і закінчується:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Щоб знайти точну позицію підрядка, використовуйте `index`. Він повертає позицію першого збігу, якщо рахувати від нуля:

```raku
say 'Raku'.index('k'); # 2
```

Якщо `index` не знаходить підрядок, він повертає `Nil` замість числа:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
