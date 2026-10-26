---
title: 'Solución: Una palabra invertida'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 Puedes encontrar el código fuente en el archivo [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Salida

```
ukaR
```

## Comentarios

1. El método `reversed` toma el `text` del objeto. Para esto usa el accesor `$.text`. Después llama sobre él al método incorporado `flip`. `flip` devuelve la cadena al revés.

1. El programa llama al método directamente sobre el objeto `Word` nuevo. El método no guarda nada. `reversed` solo crea un valor nuevo a partir del atributo y lo devuelve.

1. Dentro de la clase, también puedes leer la variable directamente. Para esto no necesitas el accesor:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
