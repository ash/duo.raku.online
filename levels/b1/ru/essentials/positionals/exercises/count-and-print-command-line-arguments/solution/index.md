---
title: 'Решение: Подсчет и вывод аргументов командной строки'
---

{% include menu.html %}

В этой программе цикл `for` является хорошим выбором.

## Код

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Найдите программу в файле [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Вывод

Запустите программу и проверьте, что она выводит аргументы с номерами строк:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Обсуждение

В этой программе есть несколько удобных трюков. Во-первых, цикл `for` проходит по [диапазону, построенному с помощью `^`](/ru/essentials/ranges/excluding-endpoints). Значит, диапазон начинается с 0. Он идёт до значения `@*ARGS`, но не включает его. В этом контексте `@*ARGS` [возвращает](/ru/essentials/positionals/arrays#size) длину массива.

Первый элемент массива имеет индекс `0`. Но по условию задачи строки нужно считать с `1`. Этот небольшой сдвиг вычисляется [внутри блока кода](/ru/essentials/strings/code-interpolation) в строке: `"{$n + 1} ..."`.

{% include nav.html %}
