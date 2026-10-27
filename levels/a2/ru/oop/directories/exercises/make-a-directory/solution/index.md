---
title: 'Решение: Создайте каталог'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `mkdir` создаёт каталог. `.IO.d` показывает, что `reports` — это каталог.

1. Теперь каталог существует. Поэтому мы можем записать в него файл. Для этого мы даём путь с именем каталога: `reports/data.txt`. Потом мы проверяем этот путь через `.e`. Проверка показывает, что файл лежит в новом каталоге.

1. Порядок здесь важен. `spurt` **не** создаёт недостающие каталоги за вас. Попробуйте записать в `reports/data.txt`, пока каталога `reports` ещё нет. Вы получите ошибку вроде `Failed to open file … : No such file or directory`. Поэтому сначала создайте каталог, как здесь делает `mkdir`. Тогда запись работает. А у `mkdir` есть одно удобное свойство. Эта процедура создаёт и недостающие каталоги в середине пути. Например, `mkdir 'reports/2026'` создаёт всю цепочку каталогов за один вызов.

{% include nav.html %}
