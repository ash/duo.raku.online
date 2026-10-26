---
title: 'Розв''язання: Чи існує ключ'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. Наріччя `:exists` повідомляє, чи є такий ключ. Воно не дістає значення.

1. У хеші немає ключа `z`, тож результат — `False`. Звичайний пошук може створити ключ як побічний ефект, а `:exists` цього не робить.

{% include nav.html %}
