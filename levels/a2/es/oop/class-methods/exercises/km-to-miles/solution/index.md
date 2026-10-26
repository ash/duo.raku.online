---
title: 'Solución: De kilómetros a millas'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Puedes encontrar el código fuente en el archivo [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Salida

```
6.21
```

## Comentarios

1. La conversión no necesita ningún objeto. Así que es un método de clase. El programa lo llama directamente sobre `Converter`.

1. Un método de clase también puede tener parámetros. Aquí, recibe el número de kilómetros. Devuelve las millas.

{% include nav.html %}
