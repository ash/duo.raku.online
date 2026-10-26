---
title: 'Solution: Un parámetro modificable'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Puedes encontrar el código fuente en el archivo [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Salida

```
42
```

## Comentarios

1. `is rw` conecta el parámetro `$n` con la variable `$score` del llamador. Así, `$n *= 2` dentro de `double` cambia el propio `$score`. Por eso el programa imprime `42`.

1. Sin `is rw`, el parámetro es de solo lectura. Entonces `$n *= 2` da un error. Con `is copy`, `double` recibe su propia copia del valor. Puede cambiar esta copia. Pero `$score` sigue valiendo `21`.

{% include nav.html %}
