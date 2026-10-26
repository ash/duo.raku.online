---
title: Variables dinámicas
---

{% include menu.html %}

Una variable _dinámica_ tiene el twigil `*`. Una variable léxica solo es visible en el bloque donde la declaras. Una variable dinámica es diferente: Raku la encuentra buscando **hacia afuera a través de la pila de llamadas**. Busca en el código que llamó al código actual. No importa dónde está definido ese código.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

La subrutina `greet` no declara `$*greeting` ni la recibe como argumento. Pero aun así puede verla. Esto es porque la variable es dinámica. Además, `greet` fue llamada desde un lugar donde la variable está en su ámbito.

Este ejemplo también funcionaría con una simple variable escalar global `$greeting`. Pero el siguiente ejemplo muestra qué hace especiales a las variables dinámicas.

La búsqueda sigue la pila de llamadas. Así que una declaración más cercana **anula** a una más lejana mientras se ejecuta su bloque:

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

La misma `show` imprime `outer` la primera vez. Imprime `inner` cuando se llama desde dentro del bloque que declaró `$*level` otra vez. Esto es el _ámbito dinámico_. Las variables integradas de Raku `$*OUT`, `$*IN` y `$*ERR` funcionan de la misma manera. Puedes redirigir la salida por un tiempo si declaras `$*OUT` otra vez en un bloque. Entonces cada rutina que llamas dentro del bloque ve el nuevo valor. Las variables dinámicas son muy buenas para pasar contexto al código llamado sin un argumento explícito.

{% include nav.html %}
