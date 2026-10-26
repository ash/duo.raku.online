---
title: 'Решение: Файл META6'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

🦋 Исходный код можно найти в файле [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Комментарии

1. `provides` связывает имя модуля с файлом, в котором лежит его код. Путь из каталогов совпадает с частями имени между `::`.

1. `depends` перечисляет другие дистрибутивы, которые нужны этому дистрибутиву. Здесь только одна запись, `"JSON::Fast"`. Когда кто-то устанавливает `Greet::Simple`, инструменты сначала загрузят `JSON::Fast`. Пустой массив означал бы, что зависимостей нет.

{% include nav.html %}
