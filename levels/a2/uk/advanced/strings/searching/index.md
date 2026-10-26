---
title: Пошук у рядках
translations_gpt:
---

{% include menu.html %}

Деякі методи кажуть вам, що є всередині рядка.

Метод `contains` перевіряє, чи є один рядок усередині іншого рядка. Він може бути в будь-якому місці:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Метод `starts-with` перевіряє початок рядка. Метод `ends-with` перевіряє кінець:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Вам потрібна точна позиція частини рядка? Тоді використовуйте `index`. Він повертає позицію першого збігу. Він рахує від нуля:

```raku
say 'Raku'.index('k'); # 2
```

Іноді `index` не може знайти цю частину. Тоді він повертає `Nil`, а не число:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
