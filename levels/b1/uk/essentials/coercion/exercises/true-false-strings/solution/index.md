---
title: 'Solution: Істинні та хибні рядки'
---

{% include menu.html %}

Ця вправа схожа на [попередню](../../true-false-numbers). Але цього разу завдання трохи складніше. Є більше «підозрілих» рядків, які можна вважати `False`. Давайте дослідимо їх.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

З усіх цих рядків лише порожній рядок перетворюється на `False`. Усі інші рядки стають `True`, навіть якщо в них є лише пробіли або символ `0`.

🦋 Ви можете знайти повну програму з наведеним вище прикладом у файлі [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
