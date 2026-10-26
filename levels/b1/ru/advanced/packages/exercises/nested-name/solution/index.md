---
title: 'Решение: Вложенное имя'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Когда вы кладёте одно пространство имён внутрь другого, получается более длинный путь `::`. И переменная, и подпрограмма находятся на два уровня вглубь, в `Outer::Inner`.

1. Полное имя `$Outer::Inner::base` ведёт к переменной. `Outer::Inner::doubled()` ведёт к подпрограмме через те же два уровня. У имени подпрограммы нет сигила. Поэтому, в отличие от переменной, перед ним нет `$`.

1. Оба члена объявлены с `our`. Именно это делает их видимыми за пределами модуля. С `my` они остались бы приватными для `Inner`.

{% include nav.html %}
