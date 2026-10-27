---
title: 'Solución: Numere las líneas'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Puedes encontrar el código fuente en el archivo [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Salida

```
1: apple
2: banana
3: cherry
```

## Comentarios

1. `spurt` escribe las tres palabras en el archivo, con saltos de línea entre ellas.

1. `.IO.lines` da las líneas una a una, sin los saltos de línea del final. Llevamos un contador `$n` y lo aumentamos en cada vuelta. Así que cada línea se imprime junto con su posición en el archivo.

{% include nav.html %}
