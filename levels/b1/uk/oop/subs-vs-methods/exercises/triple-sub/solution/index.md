---
title: 'Розв''язання: Потроєння підпрограмою'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 Вихідний код можна знайти у файлі [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Вивід

```
21
```

## Коментарі

1. Як підпрограма, `triple` стоїть сама по собі. Значення, з яким вона працює, вона отримує як аргумент.

1. Друга вправа з цієї пари розв'язує те саме завдання методом. Тож ви можете порівняти обидва підходи.

{% include nav.html %}
