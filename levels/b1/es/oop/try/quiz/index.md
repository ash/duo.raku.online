---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el programa siguiente?

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

Aquí pasan dos cosas. Primero, `die` detiene enseguida el resto del bloque `try`. Así que la línea `say 'inside'` nunca se ejecuta, y no se imprime nada de dentro del bloque. Segundo, `try` captura la excepción, así que el programa mismo no se detiene. Continúa después del bloque, y `say 'outside'` se ejecuta como siempre. Así que la única línea impresa es `outside`. Si miraras, verías que `$r` no está definida. El mensaje `Boom!` estaría esperando en `$!`.

</div>

{% include nav.html %}
