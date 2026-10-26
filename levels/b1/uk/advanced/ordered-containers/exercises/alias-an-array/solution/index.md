---
title: 'Розв''язання: Псевдонім масиву'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. Зв'язування `@alias := @original` не копіює масив. Воно робить `@alias` ще одним іменем того самого контейнера-масиву.

1. Цього разу зміна йде через `@original`, і вона змінює структуру: `push` додає елемент. Обидва імені — це той самий контейнер, тому `@alias` теж бачить новий елемент. Одне ім'я завжди можна використати замість іншого. Неважливо, яким із них ви читаєте чи змінюєте масив.

{% include nav.html %}
