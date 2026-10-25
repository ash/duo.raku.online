---
title: '`note`'
---

{% include menu.html %}

La rutina `note` imprime sus argumentos en el flujo de errores estándar. En todo lo demás, `note` es como [`say`](../say).

1. Llama al método `gist` en sus argumentos.
1. Añade un carácter de nueva línea.
1. Convierte el resultado a UTF-8.
1. Lo envía al flujo `STDERR`.

```raku
my $x = 42;
note "El valor actual de \$x es $x";
```

Este programa no envía el mensaje a `STDOUT`. Compruébalo:

```
$ raku t.raku > /dev/null
El valor actual de $x es 42
```

Puedes llamar a `note` sin argumentos. Entonces imprime el mensaje predeterminado, `Noted`.

{% include nav.html %}
