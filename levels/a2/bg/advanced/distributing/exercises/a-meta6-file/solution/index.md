---
title: 'Solution: Файл META6'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

🦋 Можете да намерите изходния код във файла [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Коментари

1. `provides` свързва името на модула с неговия файл. Кодът на модула е в този файл. В името `::` разделя частите. Пътят на директорията отговаря на тези части.

1. `depends` изброява другите дистрибуции, от които тази има нужда. Тук има само един елемент: `"JSON::Fast"`. Някой може да инсталира `Greet::Simple`. Тогава инструментите първо инсталират `JSON::Fast`. Празен масив значи, че дистрибуцията няма нужда от други дистрибуции.

{% include nav.html %}
