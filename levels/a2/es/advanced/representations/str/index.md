---
title: El método `.Str`
---

{% include menu.html %}

El método `.Str` devuelve la forma de **cadena simple** de un valor. Raku llama a este método cuando necesita un valor como cadena. Esto se llama *contexto de cadena*. `print` y `put` llaman a este método. El operador `~` también lo llama. Este operador une cadenas. También funciona con valores dentro de cadenas entre comillas dobles.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Observa que el arreglo vuelve **sin los corchetes**. Sus elementos solo están unidos con espacios. Aquí ves la diferencia con [`.gist`](../gist). El método `.gist` mantiene los corchetes. Compara los dos métodos lado a lado:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Un valor dentro de una cadena entre comillas dobles usa `.Str`. Por eso un arreglo dentro de una cadena se muestra de la forma simple:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
