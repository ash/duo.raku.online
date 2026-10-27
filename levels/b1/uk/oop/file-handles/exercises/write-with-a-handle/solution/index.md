---
title: 'Розв''язання: Запис через дескриптор'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $fh = open 'out.txt', :w;
$fh.say($_) for 1..3;
$fh.close;

print slurp 'out.txt';
```

🦋 Вихідний код можна знайти у файлі [write-with-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/write-with-a-handle.raku).

## Вивід

```
1
2
3
```

## Коментарі

1. `open` із прапорцем `:w` дає дескриптор для запису. Дескриптор лишається відкритим протягом усього циклу, тож кожен `$fh.say` додає ще один рядок. Тут дескриптор кращий за `spurt`, який щоразу відкривав би файл заново.

1. `close` зберігає дані на диску. Тож наступний `slurp` читає назад усі три рядки.

{% include nav.html %}
