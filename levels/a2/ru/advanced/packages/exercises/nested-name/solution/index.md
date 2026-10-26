---
title: 'Решение: Вложенное имя'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Исходный код можно найти в файле [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Вывод

```
10
20
```

## Комментарии

1. Здесь одно пространство имён лежит внутри другого. Так получается более длинный путь `::`. Переменная и подпрограмма лежат на два уровня вглубь, в `Outer::Inner`.

1. Полное имя `$Outer::Inner::base` даёт переменную. `Outer::Inner::doubled()` даёт подпрограмму, через те же два уровня. У имени подпрограммы нет сигила. Поэтому перед ним нет `$`, а у переменной он есть.

1. Перед обоими стоит `our`. Это делает их видимыми снаружи их модуля. С `my` они остались бы приватными для `Inner`.

{% include nav.html %}
