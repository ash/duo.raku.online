---
title: 'Решение: Составьте журнал'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Исходный код можно найти в файле [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Вывод

```
start
entry 1
entry 2
entry 3
```

## Комментарии

1. Первый `spurt` создаёт новый файл, в котором есть строка `start`.

1. Каждый `spurt` внутри цикла использует `:append`. Поэтому он добавляет свою строку после того, что уже есть в файле, и не заменяет файл. Именно так растёт файл журнала. Каждый проход цикла добавляет в конец ещё одну строку. Так же работает и каждый запуск программы.

1. Без `:append` каждый проход перезаписывал бы файл. Осталась бы только последняя строка.

{% include nav.html %}
