---
title: 'Solución: Una palabra invertida'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El método `reversed` obtiene el propio `text` del objeto a través de su accesor, `$.text`. Después llama sobre él al método incorporado `flip`, que invierte la cadena.

1. El método se llama directamente sobre el objeto `Word` nuevo. No se guarda nada de vuelta en el objeto. `reversed` solo calcula un valor nuevo a partir del atributo y lo devuelve.

1. Fíjate en que dentro de la clase no necesitas el accesor. Puedes leer la variable directamente:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
