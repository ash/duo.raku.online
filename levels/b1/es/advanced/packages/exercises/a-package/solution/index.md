---
title: 'Solution: Un paquete'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Puedes encontrar el código fuente en el archivo [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Salida

```
0
212
```

## Comentarios

1. Tanto la variable como la subrutina se declaran con `our`. Así que las dos pasan a formar parte del espacio de nombres `Temperature`, y puedes acceder a ellas desde fuera.

1. A la variable se accede como `$Temperature::freezing`: el sigilo, el nombre del paquete y luego el nombre de la variable. La subrutina se llama como `Temperature::fahrenheit(100)`. Convertir `100` da `100 * 9/5 + 32`, que es `212`.

1. Un `package` simple te da solo el espacio de nombres. Para una biblioteca reutilizable, usaríamos `module` en su lugar. Al trabajar con objetos, usaríamos una `class`. Pero el espacio de nombres funciona de la misma forma en cada caso.

{% include nav.html %}
