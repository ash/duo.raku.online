---
title: 'Решение: Интервальная функция'
---

{% include menu.html %}

В функции есть `if` с тремя ветвями. В первых двух ветвях есть проверка. Результат проверки — `True` или `False`. Третьей ветви проверка не нужна. Число может не пройти первые две проверки. Тогда остаётся только третья ветвь.

## Код

Вот решение:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Найдите программу в файле [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Вывод

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
