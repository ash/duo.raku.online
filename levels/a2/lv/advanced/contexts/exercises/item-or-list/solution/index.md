---
title: 'Risinājums: Vienums vai saraksts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my @a = 1, 2, 3;
my $count = 0;

my $x = $(@a);
$count++ for @($x);
say $count;
```

🦋 Atrodiet programmu failā [item-or-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/item-or-list.raku).

## Izvade

```
3
```

## Komentāri

1. `my $x = $(@a)` uzliek elementa kontekstu. Tāpēc viss masīvs nonāk vienā skalārā `$x`. Masīvs nesadalās savos elementos.

1. Pēc tam `@($x)` uzliek saraksta kontekstu. Tagad `$x` atkal kļūst par trim elementiem. Tāpēc cikls `for` izpildās trīs reizes. Beigās skaitītājs ir `3`. Abi kontekstualizatori dara pretējas lietas. `$( )` iepako sarakstu vienā elementā. `@( )` to atkal izpako.

{% include nav.html %}
