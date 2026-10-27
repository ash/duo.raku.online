---
title: 'Решение: Запись через дескриптор'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $fh = open 'out.txt', :w;
$fh.say($_) for 1..3;
$fh.close;

print slurp 'out.txt';
```

🦋 Исходный код можно найти в файле [write-with-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/write-with-a-handle.raku).

## Вывод

```
1
2
3
```

## Комментарии

1. `open` с флагом `:w` даёт дескриптор для записи. Дескриптор остаётся открытым во время всего цикла. Поэтому каждый `$fh.say` добавляет ещё одну строку. Здесь дескриптор лучше, чем `spurt`. `spurt` открывает файл заново каждый раз.

1. `close` записывает все данные на диск. Поэтому `slurp` после него читает обратно все три строки.

{% include nav.html %}
