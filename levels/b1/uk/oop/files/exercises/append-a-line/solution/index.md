---
title: 'Розв''язання: Наростіть журнал'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Перший `spurt` створює новий файл, який містить рядок `start`.

1. Кожен `spurt` усередині циклу використовує `:append`. Тож він додає свій рядок після наявного вмісту й не замінює файл. Саме так і росте файл журналу. Кожен прохід циклу додає в кінець ще один рядок. Так само робить і кожен запуск програми.

1. Без `:append` кожен прохід перезаписував би файл. Лишився б тільки останній рядок.

{% include nav.html %}
