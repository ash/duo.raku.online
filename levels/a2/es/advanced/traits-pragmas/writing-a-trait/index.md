---
title: Escribir un trait
translations_gpt:
---

{% include menu.html %}

Los traits son subrutinas multi normales con un nombre especial. Así, puedes escribir tus propios traits. ¿Quieres un trait `is something`? Entonces define un `multi sub trait_mod:<is>`. Sus parámetros dicen dos cosas. Dicen con qué trabaja el trait. También dan el nombre del trait:

Esta es una de las partes más difíciles de Raku. No te preocupes si te parece difícil. Puedes usar bien los traits incorporados sin este conocimiento. No necesitas saber cómo están hechos. Pocas veces vas a necesitar escribir un trait tú mismo. Esta página solo te muestra cómo funcionan los traits por dentro.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Mira la firma. El primer parámetro es `Routine:D $r`. Es el elemento que tiene el trait. Aquí, es una subrutina. El `:D` es un _smiley_ de tipo. Necesita un valor **definido**. Es un objeto de rutina real. No es el propio tipo indefinido `Routine`. Hay otros dos smileys. `:U` necesita el objeto de tipo indefinido. `:_` acepta los dos. El parámetro nombrado `:$traced!` es el nombre del trait. Este parámetro es la razón por la que `is traced` llama a esta sub. Los traits se ejecutan en **tiempo de compilación**. Así, Raku registra `foo` y `bar` justo cuando lee sus declaraciones. Cuando el programa se ejecuta, `@traced` ya tiene los dos nombres. Incluso puedes mover la línea `say @traced` arriba, antes de las dos definiciones `sub`. Aun así imprime `[foo bar]`.

Este pequeño trait solo registra nombres. Pero la misma idea puede hacer mucho más. Por ejemplo, un trait puede envolver una rutina para añadir un registro de eventos. Puede comprobar un atributo. O puede añadir metadatos, es decir, datos extra sobre el código. Aquí, el primer parámetro es un `Routine`. También puedes hacer que sea un `Attribute` o un `Variable`. Entonces el trait trabaja con atributos o variables. Los traits mantienen abierta la sintaxis de las declaraciones en Raku. Siempre puedes añadir traits nuevos. El `is rw` incorporado y tu propio `is traced` están hechos de la misma forma.

{% include nav.html %}
