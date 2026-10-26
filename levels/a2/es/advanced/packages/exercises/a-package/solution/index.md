---
title: 'Solution: Un paquete'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. La variable y la subrutina tienen `our`. Así que las dos son parte del espacio de nombres `Temperature`. El código de fuera del paquete puede llegar a ellas.

1. Obtienes la variable con `$Temperature::freezing`. Primero va el sigilo, luego el nombre del paquete y luego el nombre de la variable. Llamas a la subrutina como `Temperature::fahrenheit(100)`. Para `100`, calcula `100 * 9/5 + 32`. El resultado es `212`.

1. Un `package` simple da solo el espacio de nombres. Para una biblioteca, usaríamos `module` en su lugar. Puedes usar una biblioteca una y otra vez. Más adelante, con objetos, usaríamos una `class`. Pero el espacio de nombres funciona igual en todos estos casos.

{% include nav.html %}
