---
title: 'Решение: Подсчет и вывод аргументов командной строки'
---

{% include menu.html %}

Для этой программы хорошо подходит цикл `for`.

## Код

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Найдите программу в файле [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Вывод

Запустите программу. Проверьте, что она выводит аргументы и номера строк:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Обсуждение

В этой программе есть несколько полезных трюков. Во-первых, цикл `for` идёт по [диапазону, который создан с помощью `^`](/ru/essentials/ranges/excluding-endpoints). Диапазон начинается с 0. Он идёт до значения `@*ARGS`. Но само это значение в диапазон не входит. Здесь `@*ARGS` [даёт](/ru/essentials/positionals/arrays#size) длину массива.

У первого элемента массива индекс `0`. Но в задаче нужны номера строк с `1`. Поэтому мы прибавляем 1 к индексу. Программа делает это [в блоке кода](/ru/essentials/strings/code-interpolation) внутри строки: `"{$n + 1} ..."`.

{% include nav.html %}
