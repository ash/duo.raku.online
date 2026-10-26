---
title: do y el valor de un bloque
translations_gpt:
---

{% include menu.html %}

Un bloque por sí solo es una sentencia, no una expresión. Así que normalmente no puedes asignarlo a una variable. El prefijo `do` convierte un bloque en una expresión. Su valor es el valor de la **última** sentencia del bloque:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Dentro del bloque, puedes declarar variables, ejecutar varias sentencias y calcular un resultado. Después, `do` devuelve el valor del bloque. Esto es útil cuando necesitas más de una expresión para obtener un valor.

`do` también funciona delante de las sentencias de flujo de control. Entonces también pueden devolver un valor:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Aquí `do given` convierte todo el `given`/`when` en una expresión con el valor `positive`. Lo mismo funciona con `do if` y `do for`. En resumen, `do` te deja usar un bloque donde se espera un valor. Esto también funciona con una estructura de control.

{% include nav.html %}
