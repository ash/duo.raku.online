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

Dentro del bloque, puedes crear variables. Puedes ejecutar varias sentencias y calcular un resultado. `do` devuelve el valor del bloque. Esto es útil cuando una sola expresión no basta para obtener un valor.

`do` también funciona delante de las sentencias de flujo de control. Estas sentencias eligen o repiten código. Con `do`, también devuelven un valor:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Aquí, `do given` convierte todo el `given`/`when` en una expresión. Su valor es `positive`. Lo mismo funciona con `do if` y `do for`. En resumen, con `do` puedes poner un bloque donde Raku necesita un valor. También funciona con estructuras de control.

{% include nav.html %}
