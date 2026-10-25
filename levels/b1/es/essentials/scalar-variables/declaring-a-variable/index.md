---
title: Declaración de una variable
---

{% include menu.html %}

Antes de usar una variable, tienes que anunciarla. Raku tiene palabras especiales para esto, llamadas _declaradores_. Para declarar una variable, escribe `my` así:

```raku
my $name;
```

Con esta línea, has creado una nueva variable, que todavía no tiene valor. Pero el compilador ya sabe que existe. Cuando el mismo nombre aparece más adelante en el programa, el compilador lo reconoce.

## Más de una variable

Puedes declarar dos o más variables con un solo declarador `my`:

```raku
my ($x, $y);
```

{% include nav.html %}
