---
title: No todo error es inmediato
translations_gpt:
---

{% include menu.html %}

Por defecto, una excepción lanzada detiene el programa enseguida. La capturas con `try`. Pero no todo error que parece fatal detiene de verdad tu programa en ese mismo momento. Raku tiene fallos que se quedan callados. Algunos reaccionan solo cuando usas el resultado. Otros te dejan comprobarlos y seguir adelante. Ya has visto dos de ellos en esta parte. Vale la pena reunirlos en un solo lugar.

**Una división por cero.** Dividir por cero no falla donde está escrito. El valor malo se crea y se guarda en silencio. Solo lanza la excepción cuando lo *usas*. Por ejemplo, esto pasa cuando lo imprimes o lo conviertes en otro tipo:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

Este comportamiento retrasado y los objetos `Failure` que hay detrás son el tema de [Fallos blandos](/es/oop/failures).

**Un programa externo que falla.** Supón que `run` o `shell` devuelve un `Proc` de un programa que falló. Este `Proc` no lanza una excepción cuando se crea. Solo la lanza si lo *tiras* sin manejarlo. Guárdalo y lee `.exitcode`, o compruébalo como booleano. Entonces el fallo sigue siendo un valor simple al que puedes reaccionar. Lo viste en [El objeto Proc](/es/oop/external-programs/the-proc-object).

Los dos casos tienen una cosa en común. Un fallo puede *aplazarse*, es decir, dejarse para más tarde. Se convierte en un valor que compruebas cuando estás listo. No hace que el programa se caiga enseguida. `try` y el phaser `CATCH` se ocupan de los errores que se lanzan enseguida. Las formas de esta página se ocupan de los errores que no se lanzan enseguida.

{% include nav.html %}
