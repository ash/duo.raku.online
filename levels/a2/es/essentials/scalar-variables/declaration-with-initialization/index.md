---
title: Declaración con inicialización
---

{% include menu.html %}

A veces sabes el valor de una nueva variable desde el principio. Entonces solo necesitas una instrucción. Crea la variable y pone el valor en ella. Esto ahorra una línea de código:

```raku
my $name = 'Anna';
say $name;
```

## Dos o más variables

También puedes crear dos o más variables y darles valores. Escríbelo así:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}
