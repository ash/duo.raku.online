---
title: Lectura de argumentos de línea de comandos
---

{% include menu.html %}

La función `MAIN` marca claramente el inicio del programa, y eso es útil. Pero también es útil porque sus argumentos reciben los valores de la línea de comandos.

Puedes leer los argumentos de la línea de comandos de dos formas. La primera es el [arreglo `@*ARGS`](/es/essentials/positionals/args-array), que ya hemos usado. Ahora veamos la segunda forma.

Aquí tienes un programa que suma dos números.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Así puedes ejecutar el programa. Imprime la suma de sus dos argumentos:

```console
$ raku t.raku 123 45
168
```

Como cualquier otra función, `MAIN` puede tener valores predeterminados para sus argumentos. Esto es posible para algunos de ellos, o incluso para todos. Por ejemplo:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Si no das el segundo argumento, el programa usa el valor predeterminado:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
