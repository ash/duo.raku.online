---
title: 'Solution: ¿Visto antes?'
---

{% include menu.html %}

Esta tarea es un ejemplo clásico de usar un hash para llevar la cuenta de los elementos. Antes del bucle, el programa crea el hash `%seen`. Dentro del bucle, la palabra escrita `$word` se usa como clave del hash.

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

La construcción `%seen{$word}++` no solo suma 1 al valor. También crea el valor si antes no existía. Crear un valor de esta forma se llama _autovivificación_. Fíjate en que solo _leer_ el valor, como en la condición `if %seen{$word}`, no lo crea.

{% include nav.html %}
