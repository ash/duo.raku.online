---
title: 'Solution: Бачив раніше?'
---

{% include menu.html %}

Це класичне завдання для хешу. Хеш пам'ятає, які елементи вже були. Перед циклом програма створює хеш `%seen`. У циклі користувач вводить слово, `$word`. Програма використовує це слово як ключ хешу.

## Код

Ось рішення:

```raku
my %seen;
loop {
    my $word = prompt 'Word: ';
    if %seen{$word} {
        say %seen{$word} == 1 ?? 'Seen!' !! say "Seen %seen{$word} times!";
    }
    %seen{$word}++;
}
```

🦋 Знайдіть програму у файлі [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Вивід

```console
$ raku exercises/associatives/seen-before.raku
Word: I
Word: never
Word: saw
Word: a
Word: saw
Seen!
Word: that
Word: saw
Seen 2 times!
True
Word: as
Word: that
Seen!
Word: saw
Seen 3 times!
True
Word: sawed
Word: ^C
```

## Коментар

Код `%seen{$word}++` додає 1 до значення. Якщо значення ще немає, код також створює його. Таке створення значення має назву _автовівіфікація_. Зверніть увагу, що цього не буває, коли ви лише _читаєте_ значення. Наприклад, цього не буває в умові `if %seen{$word}`.

{% include nav.html %}
