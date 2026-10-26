---
title: 'Solution: Un archivo META6'
translations_gpt:
---

{% include menu.html %}

Aquí hay una posible solución.

## Código

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

🦋 Puedes encontrar el código fuente en el archivo [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Comentarios

1. `provides` conecta el nombre del módulo con el archivo que contiene su código. La ruta de directorios coincide con las partes del nombre entre los `::`.

1. `depends` lista las otras distribuciones que esta necesita. Aquí solo hay una entrada, `"JSON::Fast"`. Cuando alguien instale `Greet::Simple`, las herramientas descargarán primero `JSON::Fast`. Un array vacío significaría que no hay dependencias.

{% include nav.html %}
