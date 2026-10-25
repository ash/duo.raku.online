---
title: 'Решение: Деление через вычитание'
---

{% include menu.html %}

Деление — это просто вычитание, повторённое много раз. В программе есть цикл `while`, который вычитает `$b` из `$a`. Он повторяет это до тех пор, пока `$a` не станет меньше `$b`. Переменная `$n` считает повторы цикла. Это же число и есть результат.

## Код

Вот полная программа:

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

Запустите программу несколько раз. Начните с заданных значений, которые делятся без остатка:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Затем попробуйте другие значения. Например, сделайте `$b` равным `20` и проверьте, что результат правильный:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
