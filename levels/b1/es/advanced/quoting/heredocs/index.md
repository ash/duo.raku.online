---
title: Heredocs
---

{% include menu.html %}

Un _heredoc_ es una forma de entrecomillado para texto con varias líneas. No usa delimitadores alrededor del texto. En su lugar, indicas una palabra terminadora con `:to`. La cadena empieza en la línea siguiente. Continúa hasta una línea que contiene solo esa palabra:

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

El terminador marca dónde termina el texto. Aquí es `END`, pero cualquier palabra sirve. Observa el `print`. El texto conserva el salto de línea antes del terminador. Así que ya termina con un salto de línea. Con `say`, tendrías un segundo salto y una línea vacía al final. El heredoc empieza con `q:to`, así que el texto no se interpola. Para interpolar variables, usa `qq:to`:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Aquí tienes un detalle útil. La **indentación del terminador de cierre** se elimina de cada línea del texto. Así puedes indentar un heredoc para que coincida con el código de alrededor. Esa indentación no termina en la cadena:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Esto imprime los mismos `Hello,` y `World!` que en el primer ejemplo. Aquí, el `END` de cierre está indentado con ocho espacios. Así que se eliminan ocho espacios de cada línea. La cadena devuelta es solo `Hello,\nWorld!`, sin espacios al principio de las líneas.

El terminador de cierre fija cuántos espacios se eliminan. Así que cada línea del texto debe tener al menos esa indentación. Si una línea tiene menos espacios al principio, Raku no puede eliminar la cantidad completa. Entonces muestra una advertencia: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Para evitarlo, no indentes el terminador más que la línea menos indentada. Los heredocs son la opción natural para plantillas, mensajes y cualquier texto con varias líneas.

{% include nav.html %}
