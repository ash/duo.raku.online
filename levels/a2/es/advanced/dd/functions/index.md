---
title: Volcado de firmas de funciones
---

{% include menu.html %}

A veces llamas a `dd` sin argumentos dentro de una subrutina. Entonces `dd` imprime la firma de la subrutina. La firma es su nombre y sus parámetros, si los tiene. Mira este ejemplo con dos subrutinas:

```raku
sub f1 {
    dd
}

f1();

sub f2($x) {
    dd
}

f2(42);
```

El programa imprime las firmas. No imprime ningún valor:

```console
sub f1()
sub f2($x)
```

Esto es muy útil con las multi-funciones. Son varias funciones con el mismo nombre. Aquí, `dd` te dice qué variante llama de verdad el programa:

```raku
multi sub g {
    dd
}

multi sub g($x) {
    dd
}

g();
g(42);
```

Cada vez, la salida muestra la variante que coincide:

```console
sub g()
sub g($x)
```

{% include nav.html %}
