---
title: 'Solution: Ехо до достатності'
---

{% include menu.html %}

Цій програмі потрібен цикл. Цикл зупиняється, коли користувач вводить особливе слово.

## Код

Ви можете розв'язати завдання з `while`, `until` або `repeat`. Ці способи дуже схожі. Ось один із них.

```raku
my $word;
repeat {
    $word = prompt 'Your word: ';
    say $word;
} while $word ne 'enough';

say 'OK, done.';
```

🦋 Знайдіть програму у файлі [echo-until-enough.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Вивід

Запустіть програму. Введіть кілька різних слів. Потім зупиніть цикл.

```console
$ raku exercises/loops/echo-until-enough.raku
Your word: this
this
Your word: is
is
Your word: my
my
Your word: word
word
Your word: enough
enough
OK, done.
```

## Коментар

Зверніть увагу: ви створюєте змінну `$word` _перед_ циклом. Тест `while` стоїть не всередині тіла циклу. Тому тест не бачить змінну зсередини циклу.

{% include nav.html %}
