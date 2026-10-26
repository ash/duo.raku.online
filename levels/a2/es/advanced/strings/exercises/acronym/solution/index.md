---
title: 'Solution: Acrónimo'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `$phrase.words` da la lista de palabras. El bucle toma el primer carácter de cada palabra con `substr(0, 1)`. Añade este carácter al final de `$acronym`.

1. Al final, todas las primeras letras están en `$acronym`. Entonces `uc` convierte el resultado en mayúsculas: `HTML`.

{% include nav.html %}
