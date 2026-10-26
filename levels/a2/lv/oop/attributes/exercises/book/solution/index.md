---
title: 'Risinājums: Grāmata'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `has $.title` izveido atribūtu un piekļuves metodi tā lasīšanai. `has $.author` dara to pašu.

1. Programma izmanto abas piekļuves metodes vienā virknē ar dubultpēdiņām. Katra piekļuves metode ir figūriekavās: `{$b.title}` un `{$b.author}`. Ar figūriekavām jūs varat ielikt kodu virknē. Raku izpilda kodu figūriekavās. Pēc tam tas ieliek rezultātu virknē. Tātad Raku izsauc piekļuves metodes, un to vērtības nonāk virknē.

1. Abi atribūti ir virknes. Tāpēc ir labi dot tiem tipu `Str`.

{% include nav.html %}
