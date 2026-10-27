---
title: 'Решение: Существует ли?'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `.e` проверяет, существует ли путь. Первая проверка идёт до создания файла. Поэтому она возвращает `False`.

1. Затем `spurt` создаёт `test.txt`. Вторая проверка идёт для *того же самого* пути. Теперь она возвращает `True`. Вы можете снова спросить объект пути. Ответ показывает, что есть в файловой системе сейчас.

{% include nav.html %}
