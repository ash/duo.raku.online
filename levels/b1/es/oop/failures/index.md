---
title: Fallos suaves
translations_gpt:
---

{% include menu.html %}

Lanzar una excepción con `die` lo detiene todo enseguida. A veces eso es demasiado fuerte. Quizás quieres que una subrutina informe de que no pudo dar un resultado. Pero quien llama debe decidir si eso es fatal. Para esto, Raku tiene los _fallos blandos_, que creas con `fail`.

Cuando una subrutina llama a `fail`, no lanza una excepción enseguida. En su lugar, devuelve un objeto especial `Failure` a quien la llamó. Un `Failure` no está definido, así que quien llama puede comprobarlo en silencio:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

La llamada que funciona devuelve `5`. La que falla devuelve un `Failure`, y `defined` da `False` para él. Así que quien llama puede comprobar el resultado antes de usarlo.

¿Por qué se llama _blando_ un `Failure`? Se convierte en una excepción real y lanzada solo en un caso. Eso pasa cuando lo usas como valor sin comprobarlo antes. Mientras lo manejes, por ejemplo comprobando `defined`, se queda callado. Así que una subrutina puede informar de un problema sin detener todo el programa.

## Ya has visto esto

Este tipo de fallo aplazado no viene solo de `fail`. Antes en esta parte, ya te encontraste dos veces con la misma idea.

Una **división por cero** produce un valor en silencio. Solo lanza la excepción cuando realmente usas ese valor:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

Un **programa externo que falla** devuelve un `Proc`. Solo lanza una excepción si lo tiras sin manejarlo. Si lo guardas y lo miras, sigue siendo un valor callado:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

En cada caso, un problema no detiene el programa en el momento en que ocurre. En su lugar, se convierte en un valor que puedes comprobar. Solo se convierte en una excepción lanzada cuando lo usas sin comprobarlo o lo ignoras. El tema [No todo error es inmediato](/es/oop/try/deferred-errors) muestra estos dos ejemplos uno al lado del otro.

{% include nav.html %}
