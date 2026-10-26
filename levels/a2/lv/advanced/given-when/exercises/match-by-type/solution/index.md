---
title: 'Risinājums: Salīdzināt pēc tipa'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Dažreiz `when` salīdzina ar tipu. Tad gudrā salīdzināšana pārbauda, vai tēmai *ir šis tips*. `3.14` nav `Int`. Tāpēc Raku izlaiž pirmo `when`.

1. Raku valodā skaitlis ar decimālpunktu, piemēram, `3.14`, ir `Rat`. `Rat` ir racionāls skaitlis jeb daļskaitlis. Tāpēc otrais `when` atbilst. Programma izdrukā `rational`.

{% include nav.html %}
