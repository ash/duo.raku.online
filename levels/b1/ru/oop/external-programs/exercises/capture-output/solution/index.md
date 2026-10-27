---
title: 'Решение: Захватите вывод'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Исходный код можно найти в файле [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Вывод

```
3
```

## Комментарии

1. `:out` отправляет вывод программы в `Proc`, а не на экран. `.out.slurp(:close)` читает его обратно целиком. `.trim` убирает перевод строки, который `echo` добавляет в конце.

1. Теперь вывод — это обычная строка в нашей программе. Мы обращаемся с ней, как с любыми другими данными. `.words.elems` разбивает её по пробельным символам и считает части, что даёт `3`. В этом и смысл захвата вывода. Внешняя программа становится строительным блоком, а её результат мы обрабатываем дальше.

{% include nav.html %}
