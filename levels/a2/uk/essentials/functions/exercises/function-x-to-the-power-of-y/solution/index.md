---
title: 'Розв''язання: Функція для обчислення _xʸ_'
---

{% include menu.html %}

У цій програмі використайте оператор `**`. Він обчислює степінь.

## Код

Ось рішення:

```raku
sub f($x, $y) { $x ** $y }

say f(5, 3);
say f(2, 10);
say f(-4, 5);
```

🦋 Знайдіть програму у файлі [function-x-to-the-power-of-y.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-x-to-the-power-of-y.raku).

## Вивід

Запустіть програму. Перевірте, що відповіді правильні:

```console
$ raku exercises/functions/function-x-to-the-power-of-y.raku
125
1024
-1024
```

## Коментар

Функція також працює з від'ємними степенями. Наприклад:

```raku
say f(5, -1);  # 0.2
say f(10, -2); # 0.01
```

{% include nav.html %}
