---
title: 'Розв''язання: М''яка обернена величина'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `reciprocal(4)` працює як зазвичай. Вона повертає `1 / 4`. Це `0.25`.

1. `reciprocal(0)` викликає `fail`. Тож вона повертає `Failure`. `Failure` — це невизначене значення з помилкою всередині. Оператор `//` дивиться на свою ліву частину. Якщо ліва частина невизначена, `//` повертає свою праву частину. Тож ми отримуємо запасне значення, `undefined`.

1. Використання `//` вважається обробкою збою. `//` лише перевіряє, чи значення визначене. Він не використовує значення. Тож `Failure` лишається м'яким. Raku ніколи не кидає його як справжній виняток.

{% include nav.html %}
