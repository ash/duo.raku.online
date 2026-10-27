---
title: 'Розв''язання: Потроєння методом'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Вихідний код можна знайти у файлі [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Вивід

```
21
```

## Коментарі

1. Тут `triple` — це метод. Він належить об'єкту. Він працює з власним `n` об'єкта. Ви нічого йому не передаєте.

1. Порівняйте це з підпрограмою. Там дані приходять як аргумент. Тут дані лежать в об'єкті. Обидві програми дають `21`.

{% include nav.html %}
