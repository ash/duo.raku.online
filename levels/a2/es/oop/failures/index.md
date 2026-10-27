---
title: Fallos suaves
translations_gpt:
---

{% include menu.html %}

Una excepción de `die` lo detiene todo enseguida. A veces esto es demasiado. Quizás una subrutina no puede dar un resultado. Debe informar de este problema. Pero quien llama debe decidir si el programa se detiene. Quien llama es el código que llamó a la subrutina. Para este caso, Raku tiene los _fallos blandos_. Los creas con `fail`.

Una subrutina puede llamar a `fail`. Entonces no lanza una excepción enseguida. En su lugar, devuelve un objeto especial `Failure` a quien llama. Un `Failure` es un valor con un error dentro. No está definido. Así que quien llama puede comprobarlo en silencio:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

La primera llamada funciona y devuelve `5`. La segunda llamada falla. Devuelve un `Failure`. Para este objeto, `defined` da `False`. Así que quien llama puede comprobar el resultado antes de usarlo.

¿Por qué se llama _blando_ un `Failure`? Se convierte en una excepción real y lanzada solo en un caso. Esto pasa cuando lo usas como valor sin comprobarlo. Pero puedes manejarlo, por ejemplo, comprobando `defined`. Entonces se queda callado. Así una subrutina puede informar de un problema. El programa entero no tiene que detenerse.

## Esto ya lo conoces

Este tipo de fallo se deja para más tarde. No solo `fail` funciona así. Antes en esta parte, viste la misma idea dos veces.

Una **división por cero** crea un valor en silencio. Lanza una excepción solo cuando de verdad usas el valor:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

Un **programa externo que falla** devuelve un `Proc`. Lanza una excepción solo en un caso. Es cuando tiras el `Proc` sin manejarlo. Guarda el `Proc` y míralo. Entonces sigue siendo un valor callado:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

En cada caso, un problema no detiene el programa enseguida. Se convierte en un valor. Puedes comprobar este valor. Se convierte en una excepción lanzada solo en dos casos. Lo usas sin comprobarlo, o lo ignoras. El tema [No todo error es inmediato](/es/oop/try/deferred-errors) muestra los dos ejemplos juntos.

{% include nav.html %}
