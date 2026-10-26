---
title: 'Solution: Subíndice de un hash'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my %h = a => 1;
say %h<a>;
```

🦋 Puedes encontrar el código fuente en el archivo [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Salida

```
1
```

## Comentarios

1. El subíndice `< >` es un operador postcircumfijo. Va después de un término, el hash, y rodea la clave.

1. `%h<a>` da el valor guardado bajo la clave `a`. Ese valor es `1`.

{% include nav.html %}
