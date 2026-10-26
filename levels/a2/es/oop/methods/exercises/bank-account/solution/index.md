---
title: 'Solución: Un robot que camina'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
class Robot {
    has $.position is rw = 0;

    method move($steps = 1) {
        $.position += $steps;
    }
}

my $r = Robot.new;
$r.move(5);
$r.move;
$r.move(2);

say $r.position;
```

🦋 Puedes encontrar el código fuente en el archivo [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Salida

```
8
```

## Comentarios

1. El atributo `position` tiene `is rw`. Así el método puede cambiarlo. Su valor por defecto es `0`, y por eso un robot nuevo empieza en el origen.

1. El método `move` da a su parámetro un valor por defecto: `$steps = 1`. Así que `$r.move` sin argumentos mueve el robot un paso. `$r.move(5)` y `$r.move(2)` lo mueven el número de pasos dado. Las tres llamadas suman `5 + 1 + 2`. Así que la última posición es `8`.

{% include nav.html %}
