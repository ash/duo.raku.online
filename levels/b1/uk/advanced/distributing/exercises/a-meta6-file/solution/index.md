---
title: 'Розв''язання: Файл META6'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

`META6.json`:

```json
{
    "name": "Greet::Simple",
    "version": "0.0.1",
    "description": "A simple greeting module",
    "authors": [ "Your Name" ],
    "license": "Artistic-2.0",
    "depends": [ "JSON::Fast" ],
    "provides": {
        "Greet::Simple": "lib/Greet/Simple.rakumod"
    }
}
```

🦋 Вихідний код можна знайти у файлі [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Коментарі

1. `provides` пов'язує ім'я модуля з файлом, у якому лежить його код. Шлях каталогів відповідає частинам імені між `::`.

1. `depends` перелічує інші дистрибутиви, які потрібні цьому. Тут лише один запис, `"JSON::Fast"`. Коли хтось встановлює `Greet::Simple`, інструменти спершу отримають `JSON::Fast`. Порожній масив означав би, що залежностей немає.

{% include nav.html %}
