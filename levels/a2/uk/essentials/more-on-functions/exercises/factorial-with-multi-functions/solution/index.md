---
title: 'Solution: Факторіал з мульти-функціями'
---

{% include menu.html %}

Ця вправа знову про факторіали. На цьому завданні ми можемо показати більше можливостей Raku.

Щоб знайти факторіал, ми можемо почати з даного числа. Потім ми рухаємося вниз. Ми маємо зупинитися, коли число дорівнює 1. Multi-функції можуть це зробити. Винесіть випадок `$n == 1` в окрему multi-функцію.

## Код

Ось розв'язок:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Знайдіть програму у файлі [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Вивід

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Коментар

Зверніть увагу, що програма перетворює вхідний аргумент на ціле число. Вона робить це за допомогою `@*ARGS[0].Int`. Без цього вхідне число `1` дає нескінченний цикл. Ось пояснення. Тоді функція `factorial` отримує значення типу [`IntStr`](/uk/essentials/typed-variables/allomorphs). Тому Raku не може використати перший варіант multi-функції. Рекурсивний виклик `factorial(2 - 1)` — інша справа. Там аргумент — ціле число. Тому Raku може викликати перший варіант.

{% include nav.html %}
