---
title: 'Risinājums: Salīdzināt pēc tipa'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Jūs varat atrast pirmkodu failā [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Izvade

```
rational
```

## Komentāri

1. Šeit salīdzināmā vērtība ir tips. Tad gudrā salīdzināšana pārbauda, vai tēma *ir šī tipa*. `3.14` nav `Int`, tāpēc pirmais `when` tiek izlaists.

1. Raku valodā decimālskaitlis, piemēram, `3.14`, ir `Rat` — racionāls skaitlis. Tāpēc otrais `when` atbilst, un programma izdrukā `rational`.

{% include nav.html %}
