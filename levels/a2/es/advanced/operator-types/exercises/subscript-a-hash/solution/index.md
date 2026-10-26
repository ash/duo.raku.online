---
title: 'Solution: Subíndice de un hash'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El subíndice `< >` es un operador postcircumfijo. Va después de un término, aquí el hash. Y está alrededor de la clave.

1. `%h<a>` devuelve el valor de la clave `a`. Este valor es `1`.

{% include nav.html %}
