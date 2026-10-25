---
title: 'Solution: Бачив раніше?'
---

{% include menu.html %}

Це завдання — класичний приклад того, як стежити за елементами за допомогою хешу. Перед циклом програма створює хеш `%seen`. Усередині циклу введене слово `$word` використовується як ключ хешу.

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

Конструкція `%seen{$word}++` не просто додає 1 до значення. Вона також створює значення, якщо його раніше не було. Таке створення значення називається _автовівіфікація_. Зверніть увагу, що просте _читання_ значення, як в умові `if %seen{$word}`, його не створює.

{% include nav.html %}
