---
title: '`given` y `when`'
---

{% include menu.html %}

A veces un programa tiene que elegir entre varias opciones. Una cadena de comprobaciones `if` y `elsif` puede ser larga. También repite las mismas cosas. En este caso, `given`/`when` suele ser más claro. Es como la sentencia `switch` de otros lenguajes.

El bloque `given` toma un valor. Convierte este valor en el _tópico_. El tópico es la variable especial `$_`. Después, Raku compara cada bloque `when` con el tópico. Se ejecuta el primer `when` que coincide:

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

Algunos otros lenguajes tienen una sentencia `switch`. Después de una coincidencia, puede pasar al siguiente caso. Raku no hace esto. Cuando un `when` coincide, su bloque se ejecuta. Después, el bloque `given` termina. Raku no prueba los otros bloques `when`.

## El bloque `default`

Un bloque `default` se ejecuta cuando ningún bloque `when` coincide. Funciona como la parte `else` de una sentencia `if`:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` no es `1` ni `2`. Así que el programa imprime:

```
many
```

{% include nav.html %}
