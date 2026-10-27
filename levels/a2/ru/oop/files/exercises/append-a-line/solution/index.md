---
title: 'Решение: Составьте журнал'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Первый `spurt` создаёт новый файл со строкой `start`.

1. У каждого `spurt` в цикле есть `:append`. Поэтому он добавляет свою строку после старого содержимого. Он не заменяет файл. Именно так растёт файл журнала. Каждый проход цикла добавляет в конец ещё одну строку. Каждый запуск программы может так же добавить строку.

1. Без `:append` каждый проход перезаписывает файл. Тогда остаётся только последняя строка.

{% include nav.html %}
