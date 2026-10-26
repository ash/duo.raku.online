---
title: El método `.raku`
---

{% include menu.html %}

El tercer método de representación es `.raku`. Devuelve una cadena con una representación **similar a código** del valor. Lo ideal es que puedas pegar esta cadena en un programa y obtener de nuevo el mismo valor. Cada valor en Raku tiene este método.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Observa que la cadena `'Raku'` vuelve con comillas alrededor. Así puedes ver rápido la diferencia entre un número y una cadena. Es justo el tipo de detalle que necesitas cuando depuras.

El método también funciona con datos compuestos, incluso con estructuras anidadas:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

Como `.raku` devuelve una cadena normal, puedes usarlo en cualquier lugar donde se espera una cadena. Por ejemplo, puedes ponerlo dentro de una cadena entre comillas dobles:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Usa `.raku` cuando necesites la representación similar a código como cadena. Así puedes combinarla con tus propios mensajes. Muy pronto presentaremos `dd`. Esta herramienta de Rakudo imprime el mismo tipo de representación por ti en un solo paso.

{% include nav.html %}
