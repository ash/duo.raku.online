---
title: 'Solución: Numere las líneas'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `spurt` escribe las tres palabras en el archivo. Los saltos de línea separan las palabras.

1. `.IO.lines` da las líneas una a una. Las líneas no tienen salto de línea al final. Llevamos un contador `$n`. Cada vuelta del bucle le suma 1. Así que cada línea sale con su lugar en el archivo.

{% include nav.html %}
