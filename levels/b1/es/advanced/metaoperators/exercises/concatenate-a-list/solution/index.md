---
title: 'Solution: Construir una URL'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El array está escrito con la forma de comillas angulares `<...>`. Significa lo mismo que `'http', '://', 'example', '.com'`.

1. El meta-operador de reducción `[~]` pone el operador `~` entre todos los elementos. Este operador une cadenas. Así, `[~] @parts` une las cuatro partes en una sola cadena, `http://example.com`.

1. Guardamos el resultado en `$url` para poder usarlo otra vez. Después, `$url.chars` muestra que la URL completa tiene `18` caracteres.

{% include nav.html %}
