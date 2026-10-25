---
title: Números racionales
---

{% include menu.html %}

Los números racionales son una característica única de Raku. Tienen su propio tipo de dato, `Rat`.

Por dentro, un número racional es una fracción. Tiene dos partes enteras, el numerador y el denominador. Esto significa que números como 1/3 se pueden guardar de forma exacta.

Hay varias formas de escribir un número `Rat` en un programa de Raku:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Observa que aquí la barra es parte de la forma en que se escribe el número. No es un operador de división. Así que `1/2` no significa que divides 1 entre 2. Sin embargo, cuando imprimes números racionales, se ven como números decimales o enteros:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Todo lo que va después del símbolo `#` en una línea es un comentario, que el compilador ignora. En este curso, usaremos estos comentarios para mostrar lo que imprime el programa.

## Forma decimal

Es importante entender esto. Si escribes un número en forma decimal, como `0.5`, Raku crea un número `Rat`. No es un entero, y tampoco es un número de punto flotante. En otros lenguajes, estos números se llaman `float` o `double`. ¡Sigue siendo un número racional!

Mira el siguiente ejemplo:

```raku
say 0.1 + 0.2 - 0.3;
```

Si un lenguaje usa aritmética de punto flotante aquí, el resultado no será 0. El sitio web [0.30000000000000004.com](https://0.30000000000000004.com) tiene una lista completa de ejemplos. En todos ellos, la aritmética de punto flotante no da el resultado esperado.

Pero Raku imprime un `0` exacto. Esto es porque trata `0.1`, `0.2` y `0.3` como números racionales. Por dentro, los guarda como `1/10`, `2/10` y `3/10`. Ejecútalo desde la línea de comandos para comprobarlo:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Formas Unicode

También puedes usar caracteres Unicode para las fracciones, como `½`, `¼` o `¾`. Probablemente no siempre son fáciles de escribir con el teclado. Pero estas fracciones son exactamente los mismos valores que sus versiones ASCII. Esas versiones se pueden escribir como fracción o como número decimal:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Para algunas fracciones, como `1/3`, tienes menos opciones: `⅓` o `<1/3>`. Esto es porque la forma decimal necesitaría un número infinito de dígitos.

{% include nav.html %}
