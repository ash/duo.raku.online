---
title: Heredocs
---

{% include menu.html %}

Un _heredoc_ es una forma de entrecomillado para texto con muchas líneas. No tiene delimitadores alrededor del texto. En su lugar, das una palabra terminadora con `:to`. El terminador marca el final. La cadena empieza en la línea siguiente. Sigue hasta una línea con solo esa palabra:

```raku
my $text = q:to/END/;
Hello,
World!
END

print $text;
```

Esto imprime:

```
Hello,
World!
```

El terminador marca el final del texto. Aquí es `END`, pero puedes usar cualquier palabra. Mira el `print`. El texto conserva el salto de línea antes del terminador. Por eso el texto ya termina con un salto de línea. `say` añade un segundo salto. Entonces tienes una línea vacía al final. Este heredoc empieza con `q:to`. Por eso el texto no se interpola. Para interpolar variables, usa `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Aquí tienes un detalle útil. Mira la **indentación del terminador de cierre**. Raku la quita de cada línea del texto. Así puedes indentar un heredoc como el código de alrededor. La indentación no llega a la cadena:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Esto imprime los mismos `Hello,` y `World!` que el primer ejemplo. Aquí, el `END` de cierre tiene ocho espacios delante. Por eso Raku quita ocho espacios de cada línea. La función devuelve solo `Hello,\nWorld!`. No hay espacios al principio.

El terminador de cierre decide cuántos espacios quita Raku. Por eso cada línea del texto necesita al menos esos espacios. Quizás una línea tiene menos espacios. Entonces Raku no puede quitarlos todos. Muestra una advertencia: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Evita esta advertencia. No indentes el terminador más que ninguna línea del texto. Los heredocs son la opción natural para plantillas y mensajes. De hecho, son buenos para cualquier texto con varias líneas.

{% include nav.html %}
