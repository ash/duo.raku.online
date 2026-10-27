---
title: 'Решение: Существует ли?'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Исходный код можно найти в файле [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Вывод

```
False
True
```

## Комментарии

1. `.e` проверяет, существует ли путь. Первая проверка происходит до того, как мы создаём файл, поэтому она возвращает `False`.

1. Затем `spurt` создаёт `test.txt`, и вторая проверка *того же самого* пути возвращает `True`. Спросите объект пути ещё раз, и вы получите текущее состояние файловой системы.

{% include nav.html %}
