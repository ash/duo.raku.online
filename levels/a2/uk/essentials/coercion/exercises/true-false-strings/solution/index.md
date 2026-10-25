---
title: 'Solution: Істинні та хибні рядки'
---

{% include menu.html %}

Ця вправа схожа на [попередню](../../true-false-numbers). Але цього разу завдання трохи складніше. Тут більше рядків можуть бути схожі на `False`. Давайте подивимося на них.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

З усіх цих рядків лише порожній рядок стає `False`. Усі інші рядки стають `True`. Навіть рядок лише з пробілів стає `True`. Рядок із символом `0` теж стає `True`.

🦋 Ви можете знайти повну програму з наведеним вище прикладом у файлі [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
