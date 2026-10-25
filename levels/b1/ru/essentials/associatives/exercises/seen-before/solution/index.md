---
title: 'Решение: Уже видели?'
---

{% include menu.html %}

Эта задача — классический пример того, как с помощью хеша следить за элементами. Перед циклом программа создаёт хеш `%seen`. Внутри цикла введённое слово `$word` используется как ключ хеша.

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

Конструкция `%seen{$word}++` не просто прибавляет 1 к значению. Она также создаёт значение, если его раньше не было. Такое создание значения называется _автовивификацией_. Обратите внимание, что простое _чтение_ значения, как в условии `if %seen{$word}`, его не создаёт.

{% include nav.html %}
