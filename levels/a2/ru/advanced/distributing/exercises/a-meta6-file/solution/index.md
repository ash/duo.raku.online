---
title: 'Решение: Файл META6'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `provides` связывает имя модуля с его файлом. Код модуля лежит в этом файле. В имени `::` разделяет части. Путь из каталогов совпадает с этими частями.

1. `depends` перечисляет другие дистрибутивы, которые нужны этому. Здесь в нём только один элемент: `"JSON::Fast"`. Кто-то может установить `Greet::Simple`. Тогда инструменты сначала устанавливают `JSON::Fast`. Пустой массив значит, что дистрибутиву не нужны другие дистрибутивы.

{% include nav.html %}
