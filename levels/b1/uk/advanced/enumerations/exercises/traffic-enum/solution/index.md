---
title: 'Розв''язання: Світлофор'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Вихідний код можна знайти у файлі [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Вивід

```
red is 0
amber is 1
green is 2
```

## Коментарі

1. `my Light $current` — це звичайна змінна, і її можна змінювати. Єдине обмеження: вона мусить зберігати `Light`. Коли ви присвоюєте наступну константу, сигнал переходить далі. Число щоразу йде за іменем: `0`, `1`, `2`.

1. Здається, що `$current++` мав би сам перейти до наступного сигналу. Але він дає помилку перевірки типу. `++` використовує константу як звичайне число й повертає `Int` (`red` стає `1`). Але `Int` не підходить до типу `Light`. Тож щоб змінити сигнал, ви присвоюєте наступну константу, як вище.

1. Перевірка типу працює для кожного присвоєння, а не лише для першого. `$current` приймає `red`, `amber` або `green`. Те, що не є `Light`, дає помилку перевірки типу. Це стосується, наприклад, звичайного числа чи рядка.

{% include nav.html %}
