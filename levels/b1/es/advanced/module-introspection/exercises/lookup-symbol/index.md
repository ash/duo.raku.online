---
title: Buscar un símbolo
---

{% include menu.html %}

## Problema

Además de listar los nombres de un paquete, puedes llegar a un solo nombre. Para hacerlo, usa el nombre como clave en el stash del paquete. Así el nombre no tiene que estar fijo en el código. Aquí tienes un módulo, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Escribe un programa separado que cargue el módulo e imprima el valor de `$pi`. Debe buscar `$pi` en el stash con `Circle::{'$pi'}`. No debe usar el nombre calificado `$Circle::pi`.

## Ejemplo

Si lo ejecutas con el módulo en la ruta de búsqueda, el programa imprime:

```console
$ raku -I. lookup.raku
3.14
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
