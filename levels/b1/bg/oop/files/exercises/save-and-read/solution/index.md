---
title: 'Решение: Запазване и четене'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
spurt 'number.txt', "42\n";

my $n = slurp('number.txt').trim.Int;
say $n * 2;
```

🦋 Намерете програмата във файла [save-and-read.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/save-and-read.raku).

## Изход

```
84
```

## Коментари

1. `spurt` създава файла и записва низа в него. `slurp` прочита целия файл обратно в низ. Заедно те вършат цялата работа по запазване и зареждане.

1. `slurp` връща текст, `"42\n"`. Затова, преди да смятаме, използваме `trim`, за да махнем новия ред в края. След това извикваме `.Int`, за да превърнем текста в число. Резултатът, `42 * 2`, е `84`.

1. Все пак програмата работи и без `.trim.Int`.

{% include nav.html %}
