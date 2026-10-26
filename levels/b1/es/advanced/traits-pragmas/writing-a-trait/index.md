---
title: Escribir un trait
translations_gpt:
---

{% include menu.html %}

Los traits son subrutinas multi normales con un nombre especial, así que puedes escribir los tuyos. Para añadir un trait llamado `is something`, define un `multi sub trait_mod:<is>`. Sus parámetros dicen a qué se aplica el trait y le dan su nombre:

Esta es una de las partes más avanzadas de Raku. No te preocupes si te parece complicada. Puedes usar los traits incorporados perfectamente sin saber cómo están hechos. Pocas veces necesitarás escribir uno tú mismo. Así que toma esta página como una mirada a cómo funcionan las cosas por dentro.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Lee la firma. El primer parámetro, `Routine:D $r`, es el elemento al que está asociado el trait. Aquí, es una subrutina. El `:D` es un _smiley_ de tipo que exige un valor **definido**. Esto significa un objeto de rutina real, no el propio tipo indefinido `Routine`. Sus compañeros son `:U`, que exige el objeto de tipo indefinido, y `:_`, que acepta los dos. El parámetro nombrado `:$traced!` es el nombre del propio trait. Como este parámetro está ahí, `is traced` llama a esta sub. Los traits se ejecutan en **tiempo de compilación**. Así, `foo` y `bar` se registran en cuanto se declaran. Cuando el programa se ejecuta, `@traced` ya los contiene. Incluso podrías mover la línea `say @traced` antes de las dos definiciones `sub`. Seguiría imprimiendo `[foo bar]`.

Este pequeño trait solo registra nombres, pero la misma idea puede hacer mucho más. Puede envolver una rutina para añadir un registro de eventos, comprobar un atributo o añadir metadatos. El primer parámetro también puede ser un `Attribute` o `Variable` en lugar de un `Routine`. Entonces el trait se aplica a atributos o variables. Los traits son la forma en que Raku mantiene abierta su sintaxis de declaraciones. El `is rw` incorporado y tu propio `is traced` están hechos de la misma forma.

{% include nav.html %}
