---
title: El método `.Str`
---

{% include menu.html %}

El método `.Str` devuelve la forma de **cadena simple** de un valor. Raku llama a este método siempre que usa un valor en *contexto de cadena*. Esto pasa en `print` y `put`, y con el operador `~`, que une cadenas. También pasa cuando insertas un valor en una cadena entre comillas dobles.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Observa que el arreglo volvió **sin los corchetes**. Sus elementos simplemente están unidos con espacios. Esta es la diferencia visible con [`.gist`](../gist), que mantiene los corchetes. Compáralos lado a lado:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Cuando insertas un arreglo en una cadena, Raku usa `.Str`. Por eso el arreglo se muestra de la forma simple:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
