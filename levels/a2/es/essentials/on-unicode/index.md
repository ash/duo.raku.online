---
title: Notas sobre el uso de Unicode
---

{% include menu.html %}

Raku espera que todos tus archivos de programa estén en UTF-8. ¿Qué significa esto en la práctica? No tienes que preocuparte por los caracteres fuera de ASCII. Por ejemplo, puedes ponerlos en cadenas. Pero eso no es todo. Tu programa también puede leer un archivo de texto UTF-8. Seguramente tampoco tienes que preocuparte por eso. Además, Raku calcula bien la longitud de una cadena. Cuenta caracteres, no bytes. Más adelante vemos esto con más detalle.

Aquí tienes lo siguiente que debes saber. Los nombres en tu programa pueden tener letras no latinas o no inglesas. Si quieres, puedes llamar a una variable `$ι` en lugar de `$i`. El compilador la lee correctamente.

Raku tiene mucho cuidado con las propiedades Unicode de los caracteres. Por ejemplo, sabe qué caracteres son letras o dígitos. También sabe qué caracteres forman pares. Los paréntesis y los otros corchetes son pares. A menudo, partes diferentes del programa pueden usar corchetes diferentes. Por ejemplo, nuestro programa ‘¡Hola, Mundo!’ puede usar estas comillas no latinas. Vas a verlas otra vez más adelante, en las gramáticas de Raku:

```raku
say ｢Hello, World!｣;
```

Algunos operadores integrados tienen dos formas. Una forma usa Unicode, y la otra usa solo ASCII. Por ejemplo, puedes escribir ‘distinto’ como `!=` o como `≠`. Pasa lo mismo con las operaciones de conjuntos. Un ejemplo es `∈`. Su forma ASCII es `(elem)`. También hay una constante integrada. Puedes escribirla como `pi` o como `π`.

Con números, puedes escribir fracciones como `½` en lugar de `0.5`. También puedes calcular el cuadrado de `$x` como `$x²`. Esto usa un carácter en superíndice. Es pequeño y está escrito arriba.

Aquí está la lista completa de estos pares: 📖 [Símbolos Unicode y ASCII](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
