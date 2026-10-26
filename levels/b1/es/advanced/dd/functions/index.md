---
title: Volcado de firmas de funciones
---

{% include menu.html %}

Puedes llamar a `dd` solo, sin argumentos, dentro de una subrutina. Entonces imprime la firma de esa subrutina. Es decir, su nombre y la lista de parámetros, si los tiene. Mira el siguiente ejemplo con dos subrutinas:

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

El programa imprime las firmas, no los valores:

```console
sub f1()
sub f2($x)
```

Esto es especialmente útil con multi-funciones, porque muestra qué variante se llamó realmente:

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

Cada vez, la salida muestra la variante correspondiente:

```console
sub g()
sub g($x)
```

{% include nav.html %}
