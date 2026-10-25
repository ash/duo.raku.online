---
title: Longitud de la cadena
---

{% include menu.html %}

Las cadenas de Raku son cadenas Unicode. Por eso, algunas cosas simples son un poco más difíciles. O, al menos, necesitas pensar más en ellas. Por ejemplo, piensa en la longitud de una cadena. ¿Es el número de caracteres? ¿O es el número de bytes? Y a veces el mismo carácter tiene partes diferentes en cadenas diferentes. ¿Sigue siendo entonces un solo carácter?

## Longitud en caracteres

El _método_ `chars` da la longitud de una cadena en caracteres:

```raku
my $str = '你好世界';
say $str.chars;
```

Hablamos de los métodos más adelante. Pero ya podemos usarlos ahora. En Raku, puedes llamar métodos en casi cualquier objeto. Las cadenas y las variables escalares también son objetos. Para llamar a un método, escribe un punto. Aquí, la variable guarda una cadena. Llamamos al método en esta variable: `$str.chars`.

Este saludo chino tiene cuatro caracteres: 你好世界. Y `$str.chars` da exactamente `4`.

## Longitud en bytes

Esto es solo para tu información. Así obtienes la longitud de una cadena en bytes. Para esto, necesitas saber la codificación de la cadena:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Esta vez, el programa imprime `12`. Mira la segunda línea. Tiene dos llamadas a métodos, una después de la otra.

## Longitud en puntos de código

Para terminar este tema, aquí hay un método útil más para la longitud de las cadenas: `codes`. Da el número de puntos de código de la cadena. Un punto de código es el número de un carácter en Unicode. Antes de contar, Raku normaliza la cadena. Pone la cadena en una forma estándar. A menudo, `codes` y `chars` dan el mismo resultado. Pero en algunos casos raros, los dos métodos dan resultados diferentes. Por ejemplo, puedes construir ‘un carácter imposible’. En todo el espacio Unicode no hay un solo punto de código para él.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

El carácter `x̨` no tiene un punto de código propio. Solo puedes construirlo con dos partes. La primera parte es la letra minúscula `x`. La segunda parte es el carácter combinante `0x0328`. Añade una marca a la letra. Así que es un solo carácter, pero tiene dos puntos de código. Por eso el programa imprime esto:

    1
    2

{% include nav.html %}
