---
title: 'Solution: Un archivo META6'
translations_gpt:
---

{% include menu.html %}

Aquí hay una forma de resolver la tarea.

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

1. `provides` conecta el nombre del módulo con su archivo. El código del módulo está en este archivo. En el nombre, `::` separa las partes. La ruta de directorios coincide con estas partes.

1. `depends` lista las otras distribuciones que esta necesita. Aquí tiene solo un elemento: `"JSON::Fast"`. Alguien puede instalar `Greet::Simple`. Entonces las herramientas instalan primero `JSON::Fast`. Un array vacío significa que la distribución no necesita otras distribuciones.

{% include nav.html %}
