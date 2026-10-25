---
title: Escapar caracteres especiales
---

{% include menu.html %}

Imagina que quieres imprimir una etiqueta de precio. El nombre del producto está en una variable escalar. El precio está en otra variable escalar.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

El precio está en dólares. ¿Cómo imprimes entonces la etiqueta? Quieres esta salida: `Electricity costs $3.14`. Pero entre comillas dobles, un signo de dólar indica una variable. Raku interpola esta variable. Para imprimir el `$` mismo, escápalo con una barra invertida:

```raku
say "$product costs \$$price";
```

También puedes usar la concatenación de cadenas. Entonces no necesitas escapar `$`:

```raku
say $product ~ ' costs $' ~ $price;
```

Esta versión imprime exactamente la misma cadena. Pero la interpolación parece más natural. Es más fácil de leer. Mira la cadena entre comillas simples: `' costs $'`. Aquí, Raku no interpola el carácter `$`. Tampoco lo escapa. Esta es la diferencia principal. Entre comillas simples, los caracteres especiales se quedan como están.

Aquí hay algunos caracteres especiales más. Tienen un significado especial en las cadenas entre comillas dobles:

`\$` | Signo de dólar
`\n` | Nueva línea
`\r` | Retorno de carro (vuelta al inicio de la línea)
`\t` | Tabulación horizontal
`\"` | Comilla doble
`\\` | Barra invertida

Las comillas de una cadena son importantes. Le dicen a Raku qué hacer con los caracteres especiales. Mira estos dos ejemplos:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Ejecuta este programa. La primera cadena queda igual, en una línea. La segunda cadena ahora está en dos partes:

    One\nTwo
    Three
    Four

Entre comillas dobles, `\n` es una secuencia especial. Raku la convierte en un carácter de nueva línea. Entre comillas simples, `\n` son solo dos caracteres normales: `\` y `n`.

Hay una excepción interesante para `'` y `\`. Entre comillas simples, puedes escapar una comilla simple. Pon una `\` delante de ella:

```raku
say '\''; # '
```

A veces una comilla simple va después de una barra invertida. Entonces también debes escapar la barra invertida:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
