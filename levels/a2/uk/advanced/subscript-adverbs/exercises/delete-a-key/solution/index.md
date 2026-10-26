---
title: 'Розв''язання: Видаліть ключ'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Вихідний код можна знайти у файлі [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Вивід

```
2
```

## Коментарі

1. Наріччя `:delete` видаляє запис із хеша. Воно також повертає значення, але тут ми його не використовуємо.

1. Спочатку в хеші було три записи. Тепер у ньому `2`. Тож одного запису вже немає. Ми рахуємо записи через `.elems`. Порядок ключів тут не важливий. Тож вивід завжди однаковий.

{% include nav.html %}
