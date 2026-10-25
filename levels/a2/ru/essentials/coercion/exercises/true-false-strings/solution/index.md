---
title: 'Решение: Строки True и False'
---

{% include menu.html %}

Это упражнение похоже на [предыдущее](../../true-false-numbers). Но на этот раз задача немного сложнее. Здесь больше строк похожи на `False`. Давайте посмотрим на них.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Из всех этих строк только пустая строка становится `False`. Все остальные строки становятся `True`. Даже строка из одних пробелов становится `True`. Строка с символом `0` — тоже `True`.

🦋 Полную программу с приведенным выше примером можно найти в файле [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
