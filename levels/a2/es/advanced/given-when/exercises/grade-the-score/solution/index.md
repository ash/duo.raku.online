---
title: 'Solution: Etapa de vida según la edad'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Esta solución tiene dos tipos de `when`. El primero es una *condición*, `$_ < 0`. Aquí, `$_` es el tópico de `given`. Esta condición atrapa las edades que no tienen sentido. Los otros bloques `when` son *rangos*. Ponen las edades correctas en etapas.

1. El orden es importante. La comprobación de una edad negativa va primero. Así que se ejecuta antes que todos los rangos. El valor `30` está en `20..64`. Así que el programa imprime `adult`.

1. El bloque `default` es para todas las edades de 65 o más. Ninguno de los rangos de la lista tiene estas edades.

Hay también otra forma. Deja que `default` atrape la entrada *inválida*. Escribe todas las etapas conocidas. Pon `senior` como la condición `$_ >= 65`. Todo lo demás es inválido, por ejemplo, una edad negativa:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Aquí, `default` de verdad significa «ninguno de los anteriores». ¿Qué versión es mejor? Tú puedes elegir. ¿El caso inválido es raro? Entonces pon la comprobación primero. ¿Escribes claramente todas las etapas válidas? Entonces haz del caso inválido el `default`.

{% include nav.html %}
