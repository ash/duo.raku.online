---
title: 'Розв''язання: Перелічіть символи'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `Circle::` — це пакунок модуля. `.keys` перелічує імена, які він містить, кожне з його сигілом.

1. `.elems` рахує ці імена. Модуль визначає дві змінні `our`, тож кількість дорівнює `2`.

1. `.keys` не обіцяє жодного певного порядку. Тому ми використовуємо `.sort`, який щоразу дає той самий алфавітний результат: `($pi $tau)`. Без сортування порядок двох імен міг би змінюватися між запусками.

{% include nav.html %}
