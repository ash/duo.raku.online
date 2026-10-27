---
title: 'Розв''язання: Чи існує воно?'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Вихідний код можна знайти у файлі [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Вивід

```
False
True
```

## Коментарі

1. `.e` перевіряє, чи існує шлях. Перша перевірка йде до створення файлу. Тож вона повертає `False`.

1. Потім `spurt` створює `test.txt`. Друга перевірка — для *того самого* шляху. Тепер вона повертає `True`. Ви можете знову запитати об'єкт шляху. Його відповідь показує файлову систему такою, як вона зараз.

{% include nav.html %}
