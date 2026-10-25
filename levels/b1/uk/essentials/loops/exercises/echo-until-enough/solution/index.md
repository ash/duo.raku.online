---
title: 'Solution: Ехо до достатності'
---

{% include menu.html %}

Цій програмі потрібен цикл, який зупиняється, коли користувач вводить певне слово.

## Код

Є кілька схожих способів розв'язати завдання з `while`, `until` або `repeat`. Один із них показано нижче.

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

Запустіть програму, введіть кілька різних слів, а потім зупиніть цикл.

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

Зверніть увагу, що ви оголошуєте змінну `$word` _перед_ циклом, бо тест `while` знаходиться поза областю видимості тіла циклу. Якщо ви визначите змінну всередині циклу, тест її не побачить.

{% include nav.html %}
