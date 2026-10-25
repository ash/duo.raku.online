---
title: 'Решение: Строки True и False'
---

{% include menu.html %}

Это упражнение похоже на [предыдущее](../../true-false-numbers). Но на этот раз задача немного сложнее. Есть больше «подозрительных» строк, которые могут считаться `False`. Давайте их изучим.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Из всех этих строк только пустая строка преобразуется в `False`. Все остальные строки становятся `True`, даже если в них только пробелы или символ `0`.

🦋 Полную программу с приведенным выше примером можно найти в файле [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
