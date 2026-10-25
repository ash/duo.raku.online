---
title: Interpolar arrays
---

{% include menu.html %}

Puedes interpolar elementos de un arreglo en cadenas con comillas dobles. Escríbelos como lo haces en el propio programa: `@data[1]`. Para interpolar todo el arreglo, añade un par de corchetes vacíos: `@data[]`. El siguiente programa muestra cómo funciona esto:

```raku
my @data = 10, 20, 30;

say "Primero: @data[0], último: @data[1]";
say "Todos los elementos: @data[]";
```

Este programa imprime los datos que pedimos:

```console
$ raku t.raku 
Primero: 10, último: 20
Todos los elementos: 10 20 30
```

{% include nav.html %}
