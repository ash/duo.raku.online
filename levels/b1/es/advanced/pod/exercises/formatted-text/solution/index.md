---
title: 'Solution: Texto con formato'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Puedes encontrar el código fuente en el archivo [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Salida

Ejecuta con `raku --doc`:

```
Greeting

Hello, world!
```

## Comentarios

1. `B<world>` marca la palabra en negrita. Cuando se renderiza como texto plano, se ve como texto normal. Pero los formatos más ricos la muestran en negrita.

1. `raku --doc` renderiza el Pod, pero no ejecuta nada del código del programa.

1. Para *ver* de verdad la negrita, renderiza el Pod a un formato que tenga estilos. Instala un formateador, como `Pod::To::HTML`, con `zef install Pod::To::HTML`. Luego ejecuta `raku --doc=HTML formatted-text.raku`. Ahora la palabra sale dentro de un elemento HTML `<b>`. La salida de texto plano de `--doc` es diferente. No puede mostrar la negrita cuando va a un archivo o a una tubería.

{% include nav.html %}
