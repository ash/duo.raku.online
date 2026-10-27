---
title: 'Решение: Создайте каталог'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Исходный код можно найти в файле [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Вывод

```
True
True
```

## Комментарии

1. `mkdir` создаёт каталог, а `.IO.d` показывает, что `reports` действительно каталог.

1. Теперь каталог существует, поэтому в него можно записать файл. Для этого мы указываем путь, в котором есть имя каталога: `reports/data.txt`. Затем `.e` для этого пути показывает, что файл теперь лежит в новом каталоге.

1. Порядок важен: `spurt` **не** создаёт недостающие каталоги за вас. Попробуйте записать в `reports/data.txt` до того, как появился каталог `reports`. Это закончится ошибкой вроде `Failed to open file … : No such file or directory`. Запись работает только потому, что `mkdir` сначала создаёт каталог. К счастью, `mkdir` также создаёт все недостающие каталоги в середине пути. Поэтому с вложенным путём, как в `mkdir 'reports/2026'`, один вызов строит всю цепочку.

{% include nav.html %}
