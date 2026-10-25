---
title: 'Solution: Броене и принтиране на аргументите на командния ред'
---

{% include menu.html %}

Цикълът `for` е добър за тази програма.

## Код

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Намерете програмата във файла [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Изход

Стартирайте програмата. Проверете, че тя отпечатва аргументите и номерата на редовете:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Дискусия

Тази програма използва няколко полезни трика. Първо, цикълът `for` минава през [диапазон, създаден с `^`](/bg/essentials/ranges/excluding-endpoints). Диапазонът започва от 0. Той стига до стойността на `@*ARGS`. Но тази последна стойност не е в диапазона. Тук `@*ARGS` [дава](/bg/essentials/positionals/arrays#size) дължината на масива.

Първият елемент на масива има индекс `0`. Но задачата иска номера на редовете от `1`. Затова добавяме 1 към индекса. Програмата прави това [в кодов блок](/bg/essentials/strings/code-interpolation) вътре в низ: `"{$n + 1} ..."`.

{% include nav.html %}
