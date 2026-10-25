---
title: 'Решение: Уже видели?'
---

{% include menu.html %}

Это классическая задача для хеша. Хеш помнит, какие элементы уже были. Перед циклом программа создаёт хеш `%seen`. В цикле пользователь вводит слово `$word`. Программа использует это слово как ключ хеша.

## Код

Вот решение:

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

🦋 Найдите программу в файле [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Вывод

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

## Комментарий

Код `%seen{$word}++` прибавляет 1 к значению. Если значения ещё нет, код его создаёт. Такое создание значения называется _автовивификацией_. Обратите внимание: этого не происходит, когда вы только _читаете_ значение. Например, этого не происходит в условии `if %seen{$word}`.

{% include nav.html %}
