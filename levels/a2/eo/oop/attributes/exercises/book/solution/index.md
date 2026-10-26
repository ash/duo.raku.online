---
title: 'Solvo: Libro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `has $.title` kreas atributon kaj atingilon por legi ĝin. `has $.author` faras la samon.

1. La programo uzas ambaŭ atingilojn en unu ĉeno kun duoblaj citiloj. Ĉiu atingilo estas en kurbaj krampoj: `{$b.title}` kaj `{$b.author}`. Per krampoj vi povas meti kodon en ĉenon. Raku rulas la kodon en la krampoj. Poste ĝi metas la rezulton en la ĉenon. Do Raku vokas la atingilojn, kaj iliaj valoroj iras en la ĉenon.

1. Ambaŭ atributoj estas ĉenoj. Do estas bone doni al ili la tipon `Str`.

{% include nav.html %}
