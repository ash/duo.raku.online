---
title: 'Solution: Etapa de vida según la edad'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $age = 30;

given $age {
    when $_ < 0 { say 'invalid' }
    when 0..12  { say 'child' }
    when 13..19 { say 'teenager' }
    when 20..64 { say 'adult' }
    default     { say 'senior' }
}
```

🦋 Encuentra el programa en el archivo [grade-the-score.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/grade-the-score.raku).

## Salida

```
adult
```

## Comentarios

1. Esta solución mezcla dos tipos de `when`. El primero es una *condición*, `$_ < 0`, donde `$_` es el tópico que fija `given`. Filtra las edades no válidas. Los otros son *rangos*, que agrupan las edades válidas en etapas.

1. El orden importa. La comprobación de la edad negativa va primero. Así que se ejecuta antes de probar cualquier rango. El valor `30` está en `20..64`, así que el programa imprime `adult`.

1. El bloque `default` cubre todas las edades de 65 en adelante. Ninguno de los rangos de la lista atrapa estas edades.

También podrías hacerlo al revés y dejar que `default` atrape la entrada *inválida*. Escribe todas las etapas conocidas, con `senior` como la condición `$_ >= 65`. Trata como inválido todo lo que quede, como una edad negativa:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Aquí, `default` es una verdadera rama de «ninguno de los anteriores». Qué versión se lee mejor es cuestión de gusto. Pon la comprobación primero cuando el caso inválido sea una excepción. O haz que sea el `default` cuando todas las etapas válidas estén claramente en la lista.

{% include nav.html %}
