---
title: 'Solution: Факторіал з мульти-функціями'
---

{% include menu.html %}

Ця вправа знову про факторіали. Насправді це завдання дає нам змогу показати більше можливостей Raku.

Факторіал можна обчислити, якщо почати з даного числа і рухатися вниз. Тоді треба зупинитися, коли число дійде до 1. Multi-функції дозволяють це зробити. Винесіть випадок `$n == 1` в окрему multi-функцію.

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

Зверніть увагу, що програма перетворює вхідний аргумент на ціле число: `@*ARGS[0].Int`. Так ви уникаєте нескінченного циклу, коли вхідне число — `1`. Без перетворення функція `factorial` отримує значення типу [`IntStr`](/uk/essentials/typed-variables/allomorphs). Перший варіант multi-функції не може перехопити такий виклик. Але в рекурсивному виклику `factorial(2 - 1)` аргумент — ціле число. Тому Raku може викликати перший варіант.

{% include nav.html %}
