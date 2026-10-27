---
title: 'Розв''язання: М''яка обернена величина'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Вихідний код можна знайти у файлі [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Вивід

```
0.25
undefined
```

## Коментарі

1. `reciprocal(4)` працює звичайно й повертає `1 / 4`, тобто `0.25`.

1. `reciprocal(0)` викликає `fail`, тож повертає `Failure`, який невизначений. Оператор `//` повертає свою праву частину щоразу, коли його ліва частина невизначена. Тож ми отримуємо запасне значення `undefined`.

1. Використання `//` вважається обробкою збою. Він перевіряє, чи значення визначене, але не використовує його. Тож `Failure` лишається м'яким і ніколи не кидається як справжній виняток.

{% include nav.html %}
