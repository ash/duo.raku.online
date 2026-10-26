---
title: 'Solution: Файл META6'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `provides` свързва името на модула с файла, който съдържа кода му. Пътят на директорията съответства на частите на името между `::`.

1. `depends` изброява другите дистрибуции, от които тази има нужда. Тук има само един запис, `"JSON::Fast"`. Когато някой инсталира `Greet::Simple`, инструментите първо ще изтеглят `JSON::Fast`. Празен масив би означавал, че няма зависимости.

{% include nav.html %}
