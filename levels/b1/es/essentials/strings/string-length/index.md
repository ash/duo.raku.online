---
title: Longitud de la cadena
---

{% include menu.html %}

Como las cadenas en Raku son Unicode, algunas cosas simples se vuelven un poco más difíciles. O, al menos, necesitas pensar en ellas con más cuidado. Tomemos, por ejemplo, la longitud de una cadena. ¿Es el número de caracteres o el número de bytes? ¿Y qué pasa si el mismo carácter está formado por partes diferentes en cadenas diferentes? ¿Sigue siendo un solo carácter?

## Longitud en caracteres

Para saber cuántos caracteres tiene una cadena, usa el _método_ `chars`:

```raku
my $str = '你好世界';
say $str.chars;
```

Hablaremos de los métodos más adelante, pero ya deberíamos poder usarlos. En Raku, puedes llamar métodos en casi cualquier objeto, incluidas las cadenas y las variables escalares. Para llamar a un método, usa un punto. Así que aquí llamamos al método en una variable que guarda una cadena: `$str.chars`.

El saludo chino 你好世界 tiene cuatro caracteres. Y `$str.chars` devuelve exactamente `4`.

## Longitud en bytes

Solo como referencia, así se obtiene la longitud de una cadena en bytes. En este caso, necesitas saber qué codificación usa la cadena:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Esta vez, el programa imprime `12`. Observa que la segunda línea tiene dos llamadas a métodos encadenadas.

## Longitud en puntos de código

Para completar el tema, aquí hay un método útil más relacionado con la longitud de las cadenas: `codes`. Devuelve el número de puntos de código de la cadena después de normalizarla. En muchos casos, `codes` y `chars` devuelven el mismo número. Pero en algunos casos raros, los dos métodos dan resultados diferentes. Por ejemplo, puedes construir ‘un carácter imposible’. No hay un solo punto de código para él en todo el espacio Unicode.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Este carácter, `x̨`, no tiene un punto de código propio. Solo se puede construir a partir de dos partes. Son la letra minúscula `x` y el carácter combinante `0x0328`. Así que sigue habiendo un solo carácter, pero hay dos puntos de código. Por eso el programa imprime:

    1
    2

{% include nav.html %}
