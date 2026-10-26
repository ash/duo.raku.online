---
title: 'Розв''язання: Перелічіть символи'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

Програма `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols).

## Вивід

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Коментарі

1. `Circle::` — це пакунок модуля. `.keys` перелічує імена в ньому. Кожне ім'я має свій сигіл.

1. `.elems` рахує ці імена. Модуль має дві змінні `our`. Тож кількість дорівнює `2`.

1. `.keys` не дає імена в сталому порядку. Тому ми використовуємо `.sort`. Він ставить імена в алфавітному порядку. Тепер результат завжди однаковий: `($pi $tau)`. Без сортування порядок двох імен може змінюватися. Він може бути різним при кожному запуску програми.

{% include nav.html %}
