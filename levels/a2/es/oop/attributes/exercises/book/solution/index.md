---
title: 'Solución: Un libro'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Puedes encontrar el código fuente en el archivo [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Salida

```
Raku by Larry
```

## Comentarios

1. `has $.title` crea un atributo y un accesor para leerlo. `has $.author` hace lo mismo.

1. El programa usa los dos accesores en una cadena entre comillas dobles. Cada accesor está entre llaves: `{$b.title}` y `{$b.author}`. Con llaves, puedes poner código dentro de una cadena. Raku ejecuta el código de las llaves. Después pone el resultado en la cadena. Así Raku llama a los accesores, y sus valores van a la cadena.

1. Los dos atributos son cadenas. Así que es bueno darles el tipo `Str`.

{% include nav.html %}
