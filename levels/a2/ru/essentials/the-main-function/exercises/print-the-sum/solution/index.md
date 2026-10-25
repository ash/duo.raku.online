---
title: 'Решение: Выведите сумму'
---

{% include menu.html %}

В программе только одна функция, `MAIN`. Она принимает два аргумента с типами. Оба аргумента получают значения из командной строки.

## Код

Вот решение:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Найдите программу в файле [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Вывод

Попробуйте разные числа:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Вы также можете запустить программу без аргументов. Или вы можете взять аргументы других типов. Посмотрите, что будет. Вторая часть курса показывает, как работать с такими случаями.

{% include nav.html %}
