---
title: 'Решение: Псевдоним для массива'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Исходный код можно найти в файле [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Вывод

```
[10 20 30 40]
```

## Комментарии

1. Связывание `@alias := @original` не копирует массив. Оно делает `@alias` ещё одним именем того же контейнера-массива.

1. На этот раз изменение идёт через `@original`, и оно меняет структуру: `push` добавляет элемент. Оба имени — это один и тот же контейнер, поэтому `@alias` тоже видит новый элемент. Одно имя всегда можно использовать вместо другого. Неважно, через какое из них вы читаете или меняете массив.

{% include nav.html %}
