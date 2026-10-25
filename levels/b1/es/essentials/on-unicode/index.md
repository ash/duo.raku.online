---
title: Notas sobre el uso de Unicode
---

{% include menu.html %}

Raku asume que todos tus archivos de programa están guardados en UTF-8. En la práctica, no tienes que preocuparte por los caracteres que no son ASCII. Por ejemplo, puedes usarlos en literales de cadena. Pero eso no es todo. Leer un archivo de texto UTF-8 seguramente tampoco será un problema. También significa que Raku calcula bien la longitud de una cadena. Cuenta caracteres, no bytes. Lo veremos con más detalle más adelante.

Esto es lo siguiente que debes saber. Los identificadores, o nombres, pueden tener letras no latinas o no inglesas. Si quieres, puedes llamar a tu variable `$ι` en lugar de `$i`. El compilador la leerá correctamente.

Raku es bastante estricto con las propiedades Unicode de los caracteres. Por ejemplo, sabe si un carácter es una letra o un dígito. También sabe qué caracteres forman pares, como los paréntesis y otros tipos de corchetes. A menudo, partes diferentes del programa pueden usar tipos diferentes de corchetes. Por ejemplo, vamos a cambiar nuestro programa ‘¡Hola, Mundo!’. Podemos usar en él estas comillas no latinas. Las verás de nuevo cuando trabajemos con gramáticas de Raku:

```raku
say ｢Hello, World!｣;
```

Algunos operadores integrados tienen dos formas: Unicode y ASCII. Por ejemplo, puedes escribir ‘distinto’ como `!=` o como `≠`. Lo mismo pasa con las operaciones de conjuntos. Por ejemplo, `∈` tiene una versión solo ASCII, `(elem)`. Además, puedes referirte a una constante integrada como `pi` o `π`.

Con números, puedes usar fracciones como `½` en lugar de `0.5`. También puedes obtener el cuadrado de `$x` con un carácter en superíndice: `$x²`.

Mira la lista completa de estos pares en la documentación: 📖 [Símbolos Unicode versus ASCII](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
