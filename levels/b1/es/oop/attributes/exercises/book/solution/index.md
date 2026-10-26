---
title: 'Solución: Un libro'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. Tanto `has $.title` como `has $.author` declaran un atributo y también un accesor que lo lee.

1. Los dos accesores se usan en una misma cadena entre comillas dobles. Cada uno está entre llaves, `{$b.title}` y `{$b.author}`. Esta es la forma de poner código dentro de una cadena. Raku ejecuta el código de las llaves e inserta su resultado. Así se llama a los accesores, y sus valores van a la cadena.

1. Los dos atributos son cadenas, así que es buena idea declararlos como `Str`.

{% include nav.html %}
