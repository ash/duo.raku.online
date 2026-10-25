---
title: Listas
---

{% include menu.html %}

Las listas son como los arrays, pero son inmutables. No puedes cambiar el tamaño de una lista. Tampoco puedes cambiar sus elementos. Usa paréntesis para crear una lista:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Indexar listas

Para obtener un elemento de una lista, usa corchetes. Pon el índice dentro:

```raku
say $odd[3]; # 7
```

Pero no puedes dar un valor nuevo a un elemento:

```raku
$odd[3] = 8; # No está bien
```

Si lo intentas, obtienes una excepción:

    Cannot modify an immutable List ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Asignando una lista a un array

Puedes guardar una lista en una variable con el sigilo `@`. ¿Qué pasa entonces?

```raku
my @data = (40, 42, 44);
```

Entonces la variable `@data` contiene un array. Puedes cambiar sus elementos.

%%tipblock
## Variable o lista

Una lista es inmutable. Pero puedes usar otra vez su variable. Puedes poner una lista nueva en ella.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
