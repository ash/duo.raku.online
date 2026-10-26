---
title: Buscar un símbolo
---

{% include menu.html %}

## Problema

Puedes listar los nombres de un paquete. También puedes obtener un nombre de otra forma. Usa el nombre como clave en el stash del paquete. El stash es su tabla de nombres. Con una clave, el programa puede elegir el nombre mientras se ejecuta. Aquí tienes un módulo, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Escribe un programa separado. El programa carga el módulo. Luego imprime el valor de `$pi`. Debe buscar `$pi` en el stash con `Circle::{'$pi'}`. No uses el nombre completo `$Circle::pi`.

## Ejemplo

Ejecuta el programa con el módulo en la ruta de búsqueda. El programa imprime:

```console
$ raku -I. lookup.raku
3.14
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
