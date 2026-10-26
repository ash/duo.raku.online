---
title: 'Solution: Acrónimo'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Encuentra el programa en el archivo [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Salida

```
HTML
```

## Comentarios

1. `$phrase.words` devuelve la lista de palabras. Para cada palabra, el bucle toma el primer carácter con `substr(0, 1)`. Luego añade este carácter al final de `$acronym`.

1. Cuando todas las primeras letras están reunidas, `uc` convierte el resultado en mayúsculas: `HTML`.

{% include nav.html %}
