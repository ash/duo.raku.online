---
title: 'Solution: ¿Visto antes?'
---

{% include menu.html %}

Esta es una tarea clásica para un hash. El hash recuerda qué elementos ya aparecieron. Antes del bucle, el programa crea el hash `%seen`. En el bucle, el usuario escribe una palabra, `$word`. El programa usa esta palabra como clave del hash.

## Código

Aquí está la solución:

```raku
my %seen;
loop {
    my $word = prompt 'Palabra: ';
    if %seen{$word} {
        say %seen{$word} == 1 ?? '¡Visto!' !! say "¡Visto %seen{$word} veces!";
    }
    %seen{$word}++;
}
```

🦋 Encuentra el programa en el archivo [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Salida

```console
$ raku exercises/associatives/seen-before.raku
Palabra: Yo
Palabra: nunca
Palabra: vi
Palabra: una
Palabra: sierra
¡Visto!
Palabra: eso
Palabra: sierra
¡Visto 2 veces!
Cierto
Palabra: como
Palabra: eso
¡Visto!
Palabra: sierra
¡Visto 3 veces!
Cierto
Palabra: serrado
Palabra: ^C
```

## Comentario

El código `%seen{$word}++` suma 1 al valor. Si el valor todavía no existe, el código también lo crea. Crear un valor de esta forma se llama _autovivificación_. Fíjate en que esto no pasa cuando solo _lees_ el valor. Por ejemplo, no pasa en la condición `if %seen{$word}`.

{% include nav.html %}
