---
title: 'Solution: Значення π'
---

{% include menu.html %}

Програма, яка виводить значення π, досить проста.

## Код

```raku
say π;
```

🦋 Повний код можна знайти у файлі [pi.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/pi.raku).

## Вивід

Запустіть програму і подивіться, що вона виведе:

```console
$ raku exercises/numbers/pi.raku
3.141592653589793
```

## Коментарі

Raku дає нам вбудовану константу під назвою `π`, тому програма дуже проста. Проте ось кілька інших способів зробити те саме:

```raku
    π.say;
```

Або:

```raku
    pi.say;
```

Або:

```raku
    say pi;
```

{% include nav.html %}
