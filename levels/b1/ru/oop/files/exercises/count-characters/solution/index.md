---
title: 'Решение: Подсчёт символов'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Исходный код можно найти в файле [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Вывод

```
4
```

## Комментарии

1. `spurt` записывает строку `Raku` в файл.

1. `slurp` читает её обратно как строку, а `.chars` считает её символы. Их четыре.

1. Если вы заглянете в файл, вы правда увидите там только четыре символа. Символ перевода строки не добавляется.

{% include nav.html %}
