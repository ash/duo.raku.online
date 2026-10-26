---
title: 'Solvo: Libro'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Vi povas trovi la fontkodon en la dosiero [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Eligo

```
Raku by Larry
```

## Komentoj

1. `has $.title` kaj `has $.author` ambaŭ deklaras atributon kaj ankaŭ atingilon, kiu legas ĝin.

1. Ambaŭ atingiloj estas uzataj en unu ĉeno kun duoblaj citiloj. Ĉiu el ili estas en kurbaj krampoj, `{$b.title}` kaj `{$b.author}`. Tio estas la formo por meti kodon en ĉenon. Raku rulas la kodon en la krampoj kaj enmetas ĝian rezulton. Do la atingiloj estas vokataj, kaj iliaj valoroj iras en la ĉenon.

1. Ambaŭ atributoj estas ĉenoj, do estas bona ideo deklari ilin kiel `Str`.

{% include nav.html %}
