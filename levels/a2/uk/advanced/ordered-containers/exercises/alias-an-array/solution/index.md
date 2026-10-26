---
title: 'Розв''язання: Псевдонім масиву'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Вихідний код можна знайти у файлі [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Вивід

```
[10 20 30 40]
```

## Коментарі

1. Подивіться на зв'язування `@alias := @original`. Воно робить `@alias` другим іменем того самого контейнера-масиву. Воно не копіює масив.

1. Цього разу програма змінює масив через `@original`. Вона змінює структуру: `push` додає елемент. Обидва імені належать тому самому контейнеру. Тому `@alias` теж бачить новий елемент. Два імені працюють абсолютно однаково. Ви можете читати чи змінювати масив через будь-яке з них.

{% include nav.html %}
