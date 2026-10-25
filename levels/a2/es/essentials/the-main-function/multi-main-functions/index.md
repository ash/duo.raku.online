---
title: Múltiples funciones `MAIN`
---

{% include menu.html %}

Como cualquier otra función en Raku, `MAIN` puede tener variantes `multi`. Así, el programa puede reaccionar de formas diferentes a entradas diferentes. La entrada puede tener un número diferente de parámetros. O los parámetros pueden tener tipos diferentes.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Con un argumento, este programa lo duplica. Con dos argumentos, los suma:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
