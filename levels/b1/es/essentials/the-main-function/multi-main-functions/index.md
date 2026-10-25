---
title: Múltiples funciones `MAIN`
---

{% include menu.html %}

Como cualquier otra función en Raku, la función `MAIN` puede tener variantes `multi`. Con ellas, el programa puede reaccionar a cada caso a su manera. Los casos pueden ser diferentes en el número de parámetros de entrada o en sus tipos.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Si hay un solo argumento, este programa lo duplica. Si hay un segundo argumento, el programa suma los dos:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
