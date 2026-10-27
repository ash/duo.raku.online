---
title: 'Решение: Пронумеруйте строки'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `spurt` записывает три слова в файл, с переводами строк между ними.

1. `.IO.lines` выдаёт строки по одной, без переводов строки в конце. Мы держим счётчик `$n` и увеличиваем его на каждом проходе. Поэтому каждая строка печатается вместе со своим местом в файле.

{% include nav.html %}
