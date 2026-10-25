---
title: 'Решение: Деление через вычитание'
---

{% include menu.html %}

Деление — это вычитание снова и снова. В программе есть цикл `while`. Цикл вычитает `$b` из `$a`. Он повторяет это, пока `$a` не станет меньше `$b`. Переменная `$n` считает повторы цикла. Это число и есть результат, который нам нужен.

## Код

Вот вся программа:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Найдите программу в файле [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Вывод

Запустите программу несколько раз. Сначала используйте заданные значения. Они делятся без остатка:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Потом попробуйте другие значения. Например, замените `$b` на `20` и проверьте, что результат правильный:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
