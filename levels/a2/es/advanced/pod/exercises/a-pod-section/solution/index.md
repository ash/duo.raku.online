---
title: 'Solution: Una sección Pod'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 Puedes encontrar el código fuente en el archivo [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku).

## Salida

```
2
```

## Comentarios

1. `$=pod` tiene el Pod del archivo. Es una lista de bloques. `$=pod[0]` es el único bloque `=begin pod`.

1. Su `.contents` son los bloques que tiene dentro: el encabezado `=head1` y el párrafo. Así que `.contents.elems` es `2`. Un programa puede entrar así en la estructura. De esta forma, lee su propia documentación como datos.

{% include nav.html %}
