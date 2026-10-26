---
title: 'Розв''язання: Файл META6'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `provides` пов'язує ім'я модуля з його файлом. Код модуля лежить у цьому файлі. В імені `::` розділяє частини. Шлях каталогів відповідає цим частинам.

1. `depends` перелічує інші дистрибутиви, які потрібні цьому дистрибутиву. Тут у ньому лише один елемент: `"JSON::Fast"`. Хтось може встановити `Greet::Simple`. Тоді інструменти спершу встановлюють `JSON::Fast`. Порожній масив означає, що дистрибутиву не потрібні інші дистрибутиви.

{% include nav.html %}
