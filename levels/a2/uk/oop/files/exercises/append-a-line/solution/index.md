---
title: 'Розв''язання: Наростіть журнал'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Вихідний код можна знайти у файлі [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Вивід

```
start
entry 1
entry 2
entry 3
```

## Коментарі

1. Перший `spurt` створює новий файл із рядком `start`.

1. Кожен `spurt` у циклі має `:append`. Тож він додає свій рядок після старого вмісту. Він не замінює файл. Саме так і росте файл журналу. Кожен прохід циклу додає в кінець ще один рядок. Кожен запуск програми може так само додати рядок.

1. Без `:append` кожен прохід перезаписує файл. Тоді лишається тільки останній рядок.

{% include nav.html %}
