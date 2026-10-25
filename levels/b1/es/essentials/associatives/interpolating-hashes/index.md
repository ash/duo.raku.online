---
title: Interpolar hashes
---

{% include menu.html %}

Puedes interpolar elementos de un hash en cadenas con comillas dobles. Escríbelos como lo haces en el propio programa: `%data<FR>`. Para interpolar todo el hash, agrega un par de corchetes angulares vacíos o de llaves vacías: `%data{}`. El siguiente programa muestra cómo funciona esto:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# O:
# say "%data{}";
```

Este programa imprime los datos que pedimos:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Fíjate en que, cuando imprimes todo el hash, la salida puede ocupar varias líneas.

{% include nav.html %}
