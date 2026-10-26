---
title: 'Soluzione: Un libro'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Sia `has $.title` sia `has $.author` dichiarano un attributo e anche un accessore che lo legge.

1. Entrambi gli accessori sono usati in una sola stringa tra virgolette doppie. Ognuno è tra parentesi graffe, `{$b.title}` e `{$b.author}`. Questa è la forma per mettere del codice in una stringa. Raku esegue il codice tra le graffe e ne inserisce il risultato. Così gli accessori vengono chiamati, e i loro valori vanno nella stringa.

1. Entrambi gli attributi sono stringhe, quindi è una buona idea dichiararli come `Str`.

{% include nav.html %}
