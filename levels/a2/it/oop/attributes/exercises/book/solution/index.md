---
title: 'Soluzione: Un libro'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Trova il programma nel file [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Output

```
Raku by Larry
```

## Commenti

1. `has $.title` crea un attributo e un accessore per leggerlo. `has $.author` fa lo stesso.

1. Il programma usa tutti e due gli accessori in una sola stringa tra virgolette doppie. Ogni accessore è tra parentesi graffe: `{$b.title}` e `{$b.author}`. Con le graffe puoi mettere del codice in una stringa. Raku esegue il codice tra le graffe. Poi mette il risultato nella stringa. Così Raku chiama gli accessori, e i loro valori vanno nella stringa.

1. Tutti e due gli attributi sono stringhe. Quindi è bene dare loro il tipo `Str`.

{% include nav.html %}
