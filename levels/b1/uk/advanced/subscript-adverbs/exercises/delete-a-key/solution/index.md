---
title: 'Розв''язання: Видаліть ключ'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. Наріччя `:delete` вилучає запис із хеша. Воно також повертає значення, але тут ми його ігноруємо.

1. На початку хеш мав три записи, а тепер має `2`. Це показує, що один було видалено. Ми рахуємо через `.elems`, який не залежить від порядку ключів. Тож вивід завжди однаковий.

{% include nav.html %}
