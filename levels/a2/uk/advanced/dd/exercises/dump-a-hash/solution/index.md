---
title: 'Розв''язання: Вивести дамп хеша'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `dd` виводить хеш у формі, схожій на код. Кожна пара виглядає як `:ключ(значення)`.

1. Ключі виходять у відсортованому порядку. Тому `alpha` стоїть перед `beta`. Але в коді `beta` стоїть першим.

{% include nav.html %}
