---
title: Uso de `elsif`
---

{% include menu.html %}

Hasta ahora, hemos aprendido `if` y `else`. Pero, ¿qué pasa si quieres hacer una cadena de pruebas? Raku tiene al menos dos formas de hacerlo. De hecho, hay incluso más.

Una forma es usar una cadena de bloques `if`, `elsif` y `else`. Fíjate en cómo se escribe `elsif`. No es `elseif`, y tampoco es `else if`.

```raku
my $x = prompt 'Introduce el número: ';
if $x > 100 {
    say "$x es mayor que 100.";
}
elsif $x > 50 {
    say "$x es mayor que 50.";
}
elsif $x > 25 {
    say "$x es mayor que 25.";
}
else {
    say "$x es 25 o menor.";
}
```

Este programa tiene tres ramas y tres pruebas, una tras otra. En cuanto una de las condiciones es `True`, se ejecuta el bloque de código correspondiente. Si ninguna de las verificaciones es `True`, se ejecuta el bloque `else`.

Aquí tienes algunas ejecuciones de prueba del programa. Cada bloque se ejecuta en una de ellas:

```console
$ raku t.raku
Introduce el número: 120
120 es mayor que 100.

$ raku t.raku
Introduce el número: 75      
75 es mayor que 50.

$ raku t.raku
Introduce el número: 30
30 es mayor que 25.

$ raku t.raku
Introduce el número: 10
10 es 25 o menor.
```

Otra forma es usar el par [`given` y `when`](/es/advanced/given-when), que aprenderemos más tarde.

{% include nav.html %}
