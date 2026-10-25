---
title: 'Solution: Факториел с мулти-функции'
---

{% include menu.html %}

Това упражнение отново е за факториели. С тази задача можем да покажем още възможности на Raku.

За да намерим факториел, можем да започнем от даденото число. После слизаме надолу. Трябва да спрем, когато числото е 1. Мулти-функциите могат да направят това. Сложете случая `$n == 1` в отделна мулти-функция.

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

Обърнете внимание, че програмата превръща входния аргумент в цяло число. Тя прави това с `@*ARGS[0].Int`. Без това входът `1` дава безкраен цикъл. Ето причината. Тогава функцията `factorial` получава стойност от тип [`IntStr`](/bg/essentials/typed-variables/allomorphs). Затова Raku не може да използва първия вариант на мулти-функцията. Рекурсивното извикване `factorial(2 - 1)` е различно. Там аргументът е цяло число. Затова Raku може да извика първия вариант.

{% include nav.html %}
