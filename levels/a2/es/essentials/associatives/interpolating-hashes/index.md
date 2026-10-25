---
title: Interpolar hashes
---

{% include menu.html %}

Puedes interpolar elementos de un hash en cadenas con comillas dobles. Escríbelos igual que en el código del programa: `%data<FR>`. También puedes interpolar todo el hash. Para esto, agrega corchetes angulares vacíos o llaves vacías: `%data{}`. Este programa muestra cómo funciona:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# O:
# say "%data{}";
```

El programa imprime los datos que queremos:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Fíjate en que un hash entero puede imprimir más de una línea.

{% include nav.html %}
