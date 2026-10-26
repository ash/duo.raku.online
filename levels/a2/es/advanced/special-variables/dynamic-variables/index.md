---
title: Variables dinámicas
---

{% include menu.html %}

Una variable _dinámica_ tiene el twigil `*`. Una variable normal, léxica, solo se ve en su propio bloque. La declaras en este bloque. Una variable dinámica es diferente. Raku la busca **a través de la pila de llamadas**. Mira el código que llamó al código actual. Luego va un paso más atrás, y así sigue. No importa dónde está escrito el código actual.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

La subrutina `greet` no declara `$*greeting`. Tampoco la recibe como argumento. Pero aun así puede verla. La variable es dinámica. Y la variable se ve en el lugar donde el programa llama a `greet`.

Este ejemplo también funciona con una simple variable escalar global `$greeting`. El siguiente ejemplo muestra qué tienen de especial las variables dinámicas.

Raku busca la variable a través de la pila de llamadas. Así que una declaración más cercana **anula** a una más lejana. Esto significa que Raku usa la más cercana. Esto dura mientras se ejecuta su bloque:

```raku
my $*level = 'outer';

sub show {
    say $*level;
}

show(); # outer

{
    my $*level = 'inner';
    show(); # inner
}
```

La misma `show` imprime `outer` la primera vez. La segunda vez, imprime `inner`. Esta vez, el programa llama a `show` desde dentro del bloque. Este bloque declara `$*level` otra vez. Esto es el _ámbito dinámico_. Las variables integradas de Raku `$*OUT`, `$*IN` y `$*ERR` funcionan así. Por ejemplo, puedes declarar `$*OUT` otra vez en un bloque. Entonces la salida va a otro lugar por un tiempo. Cada rutina que llamas en el bloque ve el nuevo valor. Las variables dinámicas son muy buenas para información que necesita el código llamado. No tienes que pasar esta información como argumento.

{% include nav.html %}
