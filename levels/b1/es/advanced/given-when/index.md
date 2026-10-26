---
title: '`given` y `when`'
---

{% include menu.html %}

A veces un programa necesita elegir entre varias opciones. Entonces una cadena de comprobaciones `if` y `elsif` puede volverse larga y llena de repeticiones. En esos casos, `given`/`when` suele ser más claro. Se parece a la sentencia `switch` de otros lenguajes.

El bloque `given` toma un valor y lo convierte en el _tópico_. El tópico es la variable especial `$_`. Después, cada bloque `when` se compara con este tópico. Se ejecuta el primero que coincida:

```raku
my $n = 2;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    when 3 { say 'three' }
}
```

Este programa imprime:

```
two
```

A diferencia de `switch` en algunos lenguajes, no hay fall-through al siguiente caso. En cuanto un `when` coincide, su bloque se ejecuta y el bloque `given` termina. Los otros bloques `when` no se prueban.

## El bloque `default`

Un bloque `default` se ejecuta cuando ninguno de los bloques `when` ha coincidido. Hace el mismo trabajo que la rama `else` de una sentencia `if`:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` no es ni `1` ni `2`, así que el programa imprime:

```
many
```

{% include nav.html %}
