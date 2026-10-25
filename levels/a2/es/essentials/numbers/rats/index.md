---
title: Números racionales
---

{% include menu.html %}

Los números racionales son una característica única de Raku. Su tipo de dato es `Rat`.

Dentro de Raku, un número racional es una fracción. Tiene dos partes enteras. El numerador está arriba, y el denominador está abajo. Así que puedes guardar fácilmente números como 1/3. Siguen siendo exactos.

Hay algunas formas de escribir un número `Rat` en Raku:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Nota que aquí la barra es parte de la forma de escribir el número. No es un operador de división. Así que `1/2` no significa ‘divide 1 entre 2’. Pero Raku imprime los números racionales como números decimales o enteros:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

El texto después del símbolo `#` es un comentario. El compilador lo ignora. En el curso, estos comentarios muestran la salida del programa.

## Forma decimal

Es importante saber esto. Puedes escribir un número en forma decimal, por ejemplo, `0.5`. Entonces Raku crea un número `Rat`. No es un entero. Pero tampoco es un número de punto flotante. Otros lenguajes llaman a estos números `float` o `double`. ¡Sigue siendo un número racional!

Mira este ejemplo:

```raku
say 0.1 + 0.2 - 0.3;
```

Un lenguaje de programación puede usar aritmética de punto flotante para estos cálculos. Entonces el resultado no es 0. El sitio web [0.30000000000000004.com](https://0.30000000000000004.com) tiene una lista completa de estos ejemplos. En ellos, la aritmética de punto flotante no da el resultado que esperas.

Pero Raku imprime exactamente `0`. ¿Por qué? Raku ve `0.1`, `0.2` y `0.3` como números racionales. Por dentro, los guarda como `1/10`, `2/10` y `3/10`. Ejecuta el código desde la línea de comandos y compruébalo:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Formas Unicode

También puedes usar caracteres Unicode para las fracciones, como `½`, `¼` o `¾`. Tal vez no siempre son fáciles de escribir con el teclado. Pero son exactamente los mismos valores que sus versiones ASCII. Una versión ASCII puede ser una fracción o un número decimal:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Algunas fracciones, como `1/3`, tienen menos formas: solo `⅓` o `<1/3>`. La forma decimal no sirve para ellas. Necesita un número infinito de dígitos.

{% include nav.html %}
