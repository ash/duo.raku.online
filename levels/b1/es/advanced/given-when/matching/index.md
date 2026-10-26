---
title: Coincidencia con rangos, tipos y condiciones
---

{% include menu.html %}

Un bloque `when` no solo comprueba si dos valores son iguales. Hace una _coincidencia inteligente_ (smart match) entre el tópico y el valor que le das. Así que puedes comparar con rangos, tipos y condiciones, no solo con valores sueltos.

## Rangos

Un rango coincide cuando el tópico está dentro de él. Por eso `given`/`when` es una opción natural para dividir números en grupos:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

El valor `75` está en el rango `70..79`, así que el programa imprime:

```
C
```

## Tipos

Un tipo coincide cuando el tópico es de ese tipo. Así el programa puede elegir una rama según el tipo de valor que tiene:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` contiene una cadena de texto, así que el programa imprime:

```
a string
```

## Condiciones

También puedes escribir una comparación directamente. Dentro del `when`, puedes usar el tópico como `$_`. Así que una condición como `$_ < 0` coincide cuando es verdadera:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Aquí el primer `when` coincide, y el programa imprime:

```
negative
```

{% include nav.html %}
