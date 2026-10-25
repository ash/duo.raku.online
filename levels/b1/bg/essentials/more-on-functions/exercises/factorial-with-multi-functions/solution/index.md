---
title: 'Solution: Факториел с мулти-функции'
---

{% include menu.html %}

Това упражнение отново е за факториели. Всъщност тази задача ни позволява да покажем още възможности на Raku.

Можете да изчислите факториел, като започнете от даденото число и вървите надолу. В този случай трябва да спрете, когато числото стигне до 1. Мулти-функциите ви позволяват да направите това. Преместете случая `$n == 1` в отделна мулти-функция.

## Код

Ето решението:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Намерете програмата във файла [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Изход

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Коментар

Обърнете внимание, че програмата превръща входния аргумент в цяло число: `@*ARGS[0].Int`. Това предпазва от безкраен цикъл, когато входното число е `1`. Без това превръщане функцията `factorial` получава стойност от тип [`IntStr`](/bg/essentials/typed-variables/allomorphs). Първият вариант на мулти-функцията не може да хване такова извикване. Но при рекурсивното извикване `factorial(2 - 1)` аргументът е цяло число. Затова Raku може да извика първия вариант.

{% include nav.html %}
