---
title: Lectura de argumentos de línea de comandos
---

{% include menu.html %}

La función `MAIN` es útil por dos razones. Primero, muestra claramente dónde empieza el programa. Segundo, tiene argumentos. Estos reciben sus valores de la línea de comandos.

Hay dos formas de leer los argumentos de la línea de comandos. Una forma es el [arreglo `@*ARGS`](/es/essentials/positionals/args-array). Ya lo usamos. Ahora veamos la segunda forma.

Mira este programa. Suma dos números.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Ejecuta el programa así. Imprime la suma de sus dos argumentos:

```console
$ raku t.raku 123 45
168
```

Como cualquier otra función, `MAIN` puede tener valores predeterminados para sus argumentos. Algunos argumentos pueden tenerlos. Incluso todos los argumentos pueden tenerlos. Por ejemplo:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

A veces no hay un segundo argumento. Entonces el programa usa el valor predeterminado:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
