---
title: 'Розв''язання: Створіть каталог'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `mkdir` створює каталог, а `.IO.d` показує, що `reports` справді каталог.

1. Каталог тепер існує, тож ми можемо записати в нього файл. Для цього ми даємо шлях, який містить ім'я каталогу: `reports/data.txt`. Потім `.e` для цього шляху показує, що файл тепер лежить у новому каталозі.

1. Порядок має значення: `spurt` **не** створює відсутні каталоги за вас. Спробуйте записати в `reports/data.txt`, коли каталогу `reports` ще немає. Це закінчиться помилкою на кшталт `Failed to open file … : No such file or directory`. Запис працює лише тому, що `mkdir` спершу створює каталог. На щастя, `mkdir` також створює всі відсутні каталоги посередині шляху. Тож із вкладеним шляхом, як у `mkdir 'reports/2026'`, один виклик будує весь ланцюжок.

{% include nav.html %}
