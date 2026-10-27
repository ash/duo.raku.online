---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
my $r = try {
    die 'Boom!';
    say 'inside';
};

say 'outside';
```

{:.quiz}
1 | outside
0 | inside
0 | inside y después outside
0 | Boom!
0 | un error

{% include quiz.html %}

<div class="extended-explanation">

Aquí pasan dos cosas. Primero, `die` detiene enseguida el resto del bloque `try`. Así que el programa nunca llega a la línea `say 'inside'`. El programa no imprime nada de dentro del bloque. Segundo, `try` captura la excepción, el error de `die`. Así que el programa mismo no se detiene. Sigue después del bloque. `say 'outside'` se ejecuta como siempre. Así que el programa imprime solo una línea: `outside`. También puedes mirar `$r` y `$!`. `$r` no está definida. El mensaje `Boom!` espera en `$!`.

</div>

{% include nav.html %}
