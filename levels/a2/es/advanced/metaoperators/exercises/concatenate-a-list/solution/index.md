---
title: 'Solution: Construir una URL'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 Puedes encontrar el código fuente en el archivo [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Salida

```
http://example.com
18
```

## Comentarios

1. El array usa la forma de comillas con corchetes angulares, `<...>`. Es lo mismo que `'http', '://', 'example', '.com'`.

1. `[~]` es un meta-operador de reducción. Pone el operador `~` entre todos los elementos. El operador `~` une cadenas. Así, `[~] @parts` une las cuatro partes en una sola cadena, `http://example.com`.

1. El resultado está en la variable `$url`. Así podemos usarlo otra vez. `$url.chars` da la longitud de toda la URL. Tiene `18` caracteres.

{% include nav.html %}
