---
title: 'Розв''язання: Створіть каталог'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Вихідний код можна знайти у файлі [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Вивід

```
True
True
```

## Коментарі

1. `mkdir` створює каталог. `.IO.d` показує, що `reports` — це каталог.

1. Тепер каталог існує. Тож ми можемо записати в нього файл. Для цього ми даємо шлях з ім'ям каталогу: `reports/data.txt`. Потім ми перевіряємо цей шлях через `.e`. Перевірка показує, що файл лежить у новому каталозі.

1. Порядок тут важливий. `spurt` **не** створює відсутні каталоги за вас. Спробуйте записати в `reports/data.txt`, коли каталогу `reports` ще немає. Ви отримаєте приблизно таку помилку: `Failed to open file … : No such file or directory`. Тож спочатку створіть каталог, як тут робить `mkdir`. Тоді запис працює. А ось одна приємна річ про `mkdir`. Він також створює відсутні каталоги посередині шляху. Наприклад, `mkdir 'reports/2026'` створює весь ланцюжок каталогів одним викликом.

{% include nav.html %}
