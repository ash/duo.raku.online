---
title: 'Risinājums: Grāmata'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Atrodiet programmu failā [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Izvade

```
Raku by Larry
```

## Komentāri

1. Gan `has $.title`, gan `has $.author` deklarē atribūtu un arī piekļuves metodi, kas to nolasa.

1. Abas piekļuves metodes ir izmantotas vienā virknē ar dubultpēdiņām. Katra no tām ir figūriekavās, `{$b.title}` un `{$b.author}`. Šī ir forma, ar kuru virknē ieliek kodu. Raku izpilda kodu figūriekavās un ievieto tā rezultātu. Tātad piekļuves metodes tiek izsauktas, un to vērtības nonāk virknē.

1. Abi atribūti ir virknes, tāpēc ir labi tos deklarēt kā `Str`.

{% include nav.html %}
