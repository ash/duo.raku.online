---
title: 'Розв''язання: Чи існує воно?'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `.e` перевіряє, чи існує шлях. Перша перевірка відбувається до того, як ми створюємо файл, тож вона повертає `False`.

1. Потім `spurt` створює `test.txt`, і друга перевірка *того самого* шляху повертає `True`. Запитайте об'єкт шляху знову, і ви отримаєте поточний стан файлової системи.

{% include nav.html %}
