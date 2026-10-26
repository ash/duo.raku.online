---
title: 'Solutio: Liber'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Inveni codicem fontem in archivo [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Exitus

```
Raku by Larry
```

## Commentarii

1. Et `has $.title` et `has $.author` attributum declarant et etiam accessorem qui id legit.

1. Uterque accessor in una chorda duplicibus virgulis clausa adhibetur. Uterque intra uncos crispos est, `{$b.title}` et `{$b.author}`. Haec est forma qua codicem in chordam ponis. Raku codicem in uncis exsequitur et effectum eius inserit. Itaque accessores vocantur, et valores eorum in chordam veniunt.

1. Utrumque attributum chorda est, itaque bonum consilium est ea ut `Str` declarare.

{% include nav.html %}
