---
title: 'Решение: Пронумеруйте строки'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Исходный код можно найти в файле [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Вывод

```
1: apple
2: banana
3: cherry
```

## Комментарии

1. `spurt` записывает три слова в файл. Переводы строк разделяют слова.

1. `.IO.lines` даёт строки по одной. У строк нет перевода строки в конце. Мы держим счётчик `$n`. Каждый проход цикла прибавляет к нему 1. Поэтому каждая строка печатается вместе со своим местом в файле.

{% include nav.html %}
