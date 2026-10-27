---
title: 'Решение: Подсчёт символов'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `slurp` читает файл как строку. `.chars` считает символы в ней. Их четыре.

1. Посмотрите в файл. Вы видите только эти четыре символа. В конце нет символа перевода строки.

{% include nav.html %}
