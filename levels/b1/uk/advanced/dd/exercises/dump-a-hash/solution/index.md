---
title: 'Розв''язання: Вивести дамп хеша'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

## Код

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Вихідний код можна знайти у файлі [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Вивід

```
{:alpha(1), :beta(2)}
```

## Коментарі

1. `dd` виводить хеш у формі, схожій на код. Кожну пару показано як `:ключ(значення)`.

1. Ключі виводяться у відсортованому порядку, тому `alpha` йде перед `beta`. Так відбувається, хоча в коді `beta` записано першим.

{% include nav.html %}
