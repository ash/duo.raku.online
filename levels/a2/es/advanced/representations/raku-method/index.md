---
title: El método `.raku`
---

{% include menu.html %}

El tercer método es `.raku`. Devuelve una cadena con una forma **similar a código** del valor. En el mejor caso, puedes pegar esta cadena en un programa. Así obtienes otra vez el mismo valor. Cada valor en Raku tiene este método.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Mira la cadena `'Raku'`. Vuelve con comillas alrededor. Así un número y una cadena se ven diferentes. Necesitas estos detalles cuando depuras un programa.

El método también funciona con datos de muchas partes. Esto incluye datos anidados, con una estructura dentro de otra:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

`.raku` devuelve una cadena normal. Así puedes usarlo donde necesitas una cadena. Por ejemplo, puedes ponerlo dentro de una cadena entre comillas dobles:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Usa `.raku` cuando necesitas esta forma como cadena. Así puedes añadirla a tus propios mensajes. Muy pronto vas a conocer `dd`. Es una herramienta de Rakudo. Imprime el mismo tipo de forma por ti, en un solo paso.

{% include nav.html %}
