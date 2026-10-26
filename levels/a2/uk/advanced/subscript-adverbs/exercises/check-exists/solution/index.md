---
title: 'Розв''язання: Чи існує ключ'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Вихідний код можна знайти у файлі [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Вивід

```
False
```

## Коментарі

1. Наріччя `:exists` каже, чи є такий ключ. Воно не дістає значення.

1. У хеші немає ключа `z`. Тож результат — `False`. Звичайний пошук може створити ключ як побічний ефект. `:exists` цього не робить.

{% include nav.html %}
