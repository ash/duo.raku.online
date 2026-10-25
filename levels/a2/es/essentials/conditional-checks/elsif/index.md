---
title: Uso de `elsif`
---

{% include menu.html %}

Ahora conoces `if` y `else`. Pero, ¿qué pasa si necesitas muchas pruebas, una tras otra? Raku tiene al menos dos formas para esto. De hecho, tiene aún más.

Una forma es una cadena de bloques: `if`, `elsif` y `else`. Mira cómo escribimos `elsif`. No es `elseif`. Tampoco es `else if`.

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

Este programa tiene tres ramas. Tiene tres pruebas, una tras otra. En cuanto una condición es `True`, Raku ejecuta su bloque de código. Si ninguna prueba es `True`, Raku ejecuta el bloque `else`.

Aquí tienes algunas ejecuciones de prueba del programa. Juntas, usan todos los bloques:

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

Otra forma es el par [`given` y `when`](/es/advanced/given-when). Lo aprendemos más tarde.

{% include nav.html %}
