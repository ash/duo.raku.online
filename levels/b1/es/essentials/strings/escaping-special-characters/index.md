---
title: Escapar caracteres especiales
---

{% include menu.html %}

Imagina que quieres imprimir una etiqueta de precio. Guardas el nombre del producto y su precio en dos variables escalares.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

¿Cómo imprimes la etiqueta si el precio está en dólares? La salida debe ser `Electricity costs $3.14`. Pero en las cadenas entre comillas dobles, un signo de dólar indica que hay que interpolar una variable. Para imprimir el carácter `$` mismo, necesitas escaparlo:

```raku
say "$product costs \$$price";
```

Por supuesto, también puedes evitar escapar `$` con la concatenación de cadenas:

```raku
say $product ~ ' costs $' ~ $price;
```

Esta versión imprime exactamente la misma cadena. Pero la interpolación parece más natural y es más fácil de leer. Observa la cadena entre comillas simples `' costs $'`. En ella, el carácter `$` ni se interpola ni se escapa. Esa es la diferencia principal. Los caracteres especiales entre comillas simples aparecen tal como son.

En las cadenas entre comillas dobles, algunos caracteres más tienen un significado especial:

`\$` | Signo de dólar
`\n` | Nueva línea
`\r` | Retorno de carro
`\t` | Tabulación horizontal
`\"` | Comilla doble
`\\` | Barra invertida

El tipo de comillas de una cadena decide cómo trata Raku los caracteres especiales. Mira estos dos ejemplos:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Si ejecutas este programa, la primera cadena aparece sin cambios, en una sola línea. Pero la segunda cadena se divide en dos partes:

    One\nTwo
    Three
    Four

Entre comillas dobles, Raku trata la secuencia especial `\n` como un carácter de nueva línea. Entre comillas simples, son solo dos caracteres normales: `\` y `n`.

Hay una excepción interesante para `'` y `\`. Entre comillas simples, puedes escapar una comilla simple con una `\` delante:

```raku
say '\''; # '
```

Si una comilla simple sigue a una barra invertida, también necesitas escapar la barra invertida:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
