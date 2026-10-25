---
title: 'Solution: Ехо до достатності'
---

{% include menu.html %}

Цій програмі потрібен цикл, який зупиняється, коли користувач вводить особливе слово.

## Код

Ви можете розв'язати завдання кількома схожими способами, з `while`, `until` або `repeat`. Ось один із них.

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

Запустіть програму та введіть кілька різних слів. Потім зупиніть цикл.

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

Зверніть увагу, що ви оголошуєте змінну `$word` _перед_ циклом. Тест `while` стоїть поза тілом циклу. Якщо ви визначаєте змінну всередині циклу, тест її не бачить.

{% include nav.html %}
