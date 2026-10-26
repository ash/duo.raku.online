---
title: 'Solution: Texto con formato'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Puedes encontrar el código fuente en el archivo [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Salida

Ejecútalo con `raku --doc`:

```
Greeting

Hello, world!
```

## Comentarios

1. `B<world>` pone la palabra en negrita. En texto plano, se ve como texto normal. Pero los formatos más ricos la muestran en negrita.

1. `raku --doc` muestra el Pod como texto. No ejecuta ningún código del programa.

1. ¿Quieres *ver* de verdad la negrita? Entonces convierte el Pod a un formato con estilos. Primero, instala un módulo formateador, por ejemplo, `Pod::To::HTML`. Para esto, usa `zef install Pod::To::HTML`. Luego ejecuta `raku --doc=HTML formatted-text.raku`. Ahora la palabra está dentro de un elemento HTML `<b>`. El texto plano de `--doc` es diferente. No puede mostrar la negrita en un archivo o en una tubería.

{% include nav.html %}
