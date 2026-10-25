---
title: 'Solution: Броене и принтиране на аргументите на командния ред'
---

{% include menu.html %}

В тази програма, `for` цикъл е добър избор.

## Код

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Намерете програмата във файла [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Изход

Стартирайте програмата и проверете, че тя отпечатва аргументите с номерата на редовете:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Дискусия

Тази програма използва няколко удобни трика. Първо, цикълът `for` минава през [диапазона, създаден с `^`](/bg/essentials/ranges/excluding-endpoints). Така диапазонът започва от 0. Той стига до стойността на `@*ARGS`, но не я включва. В този контекст `@*ARGS` [връща](/bg/essentials/positionals/arrays#size) дължината на масива.

Първият елемент на масива има индекс `0`. Но задачата иска да броим редовете от `1`. Тази малка промяна се изчислява [вътре в кодов блок](/bg/essentials/strings/code-interpolation) в низ: `"{$n + 1} ..."`.

{% include nav.html %}
