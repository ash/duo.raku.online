---
title: 'Решение: Псевдоним для массива'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Посмотрите на связывание `@alias := @original`. Оно делает `@alias` вторым именем того же контейнера-массива. Оно не копирует массив.

1. На этот раз программа меняет массив через `@original`. Она меняет структуру: `push` добавляет элемент. Оба имени относятся к одному и тому же контейнеру. Поэтому `@alias` тоже видит новый элемент. Два имени работают совершенно одинаково. Читать или менять массив можно через любое из них.

{% include nav.html %}
