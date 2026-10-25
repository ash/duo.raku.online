---
title: 'Решение: Выведите сумму'
---

{% include menu.html %}

В программе есть только одна функция `MAIN`. Она принимает два типизированных аргумента. Оба они создаются из аргументов командной строки.

## Код

Вот решение:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Найдите программу в файле [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Вывод

Попробуйте разные входные числа:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Вы также можете запустить программу без аргументов или с аргументами других типов. Посмотрите, что тогда произойдёт. О том, как работать с такими случаями, мы поговорим во второй части курса.

{% include nav.html %}
