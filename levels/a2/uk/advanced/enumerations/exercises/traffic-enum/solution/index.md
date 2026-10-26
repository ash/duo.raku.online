---
title: 'Розв''язання: Світлофор'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `my Light $current` — це звичайна змінна. Ви можете змінювати її значення. Але вона може зберігати лише `Light`. Присвойте наступну константу, і сигнал перейде далі. Щоразу число змінюється разом з іменем: `0`, `1`, `2`.

1. Здається, що `$current++` сам переходить до наступного сигналу. Але він дає помилку перевірки типу. `++` бачить у константі лише її число. Він повертає `Int`: `red` стає `1`. Але `Int` — це не `Light`. Тож, щоб змінити сигнал, присвойте наступну константу, як вище.

1. Raku перевіряє тип при кожному присвоєнні, а не лише при першому. `$current` приймає `red`, `amber` або `green`. Інших значень вона не приймає, наприклад числа чи рядка. Вони не є `Light`. Таке присвоєння дає помилку перевірки типу.

{% include nav.html %}
