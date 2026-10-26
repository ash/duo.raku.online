---
title: Coincidencia con rangos, tipos y condiciones
---

{% include menu.html %}

Un bloque `when` hace más que comprobar si dos valores son iguales. Hace una _coincidencia inteligente_ (smart match). Compara el tópico con el valor que le das. Así que puedes comparar con rangos, tipos y condiciones. No tienes que usar solo valores sueltos.

## Rangos

Un rango coincide cuando el tópico está dentro de él. Así que `given`/`when` sirve bien para poner números en grupos:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

El valor `75` está en el rango `70..79`. Así que el programa imprime:

```
C
```

## Tipos

Un tipo coincide cuando el tópico tiene este tipo. Así que puedes elegir qué hacer según el tipo de valor:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` tiene una cadena de texto. Así que el programa imprime:

```
a string
```

## Condiciones

También puedes escribir una comparación directamente. Dentro de `when`, el tópico es `$_`. Así que una condición como `$_ < 0` coincide cuando es verdadera:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Aquí, el primer `when` coincide. El programa imprime:

```
negative
```

{% include nav.html %}
