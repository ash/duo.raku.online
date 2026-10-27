---
title: No todo error es inmediato
translations_gpt:
---

{% include menu.html %}

Una excepción es un tipo de error. Normalmente, una excepción lanzada detiene el programa enseguida. La capturas con `try`. Pero algunos errores solo parecen fatales. No detienen tu programa en el momento en que pasan. En Raku, algunos fallos se quedan callados. Algunos reaccionan solo más tarde, cuando usas el resultado. Otros te dejan mirarlos, y tu programa sigue. Ya viste dos de ellos en esta parte. Es útil verlos juntos en un solo lugar.

**Una división por cero.** No falla en su propia línea. El programa crea el valor malo y lo guarda en silencio. El valor lanza una excepción solo cuando lo *usas*. Por ejemplo, lo imprimes o lo conviertes en otro tipo:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

La página [Fallos blandos](/es/oop/failures) explica esta reacción tardía. También explica los objetos `Failure` que hay detrás.

**Un programa externo que falla.** `run` y `shell` devuelven un `Proc`. A veces el programa falla. Su `Proc` no lanza una excepción en ese momento. Solo la lanza en un caso. Es cuando *tiras* el `Proc` sin manejarlo. Así que guarda el `Proc` y lee `.exitcode`. O comprueba si es verdadero o falso. Entonces el fallo sigue siendo un valor simple. Puedes reaccionar a él. Viste esto en [El objeto Proc](/es/oop/external-programs/the-proc-object).

Los dos casos tienen una cosa en común. Un fallo puede *aplazarse*, es decir, dejarse para más tarde. Entonces el programa no se cae enseguida. Se convierte en un valor. Miras este valor cuando estás listo. `try` y el phaser `CATCH` manejan los errores que se lanzan enseguida. Las dos formas de esta página manejan los otros errores.

{% include nav.html %}
