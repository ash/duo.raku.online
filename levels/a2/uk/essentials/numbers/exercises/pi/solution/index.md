---
title: 'Solution: Значення π'
---

{% include menu.html %}

Вивести значення π легко.

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

У Raku є вбудована константа `π`. Тому програма дуже проста. Але є й інші способи зробити те саме:

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
