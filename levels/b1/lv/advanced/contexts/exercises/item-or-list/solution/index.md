---
title: 'Risinājums: Vienums vai saraksts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `my $x = $(@a)` uzliek elementa kontekstu. Tāpēc viss masīvs tiek iepakots vienā skalārā `$x`. Tas netiek izklāts.

1. Pēc tam `@($x)` uzliek saraksta kontekstu un atkal izklāj `$x` tā trijos elementos. Tāpēc cikls `for` izpildās trīs reizes, un skaitītājs beigās ir `3`. Abi kontekstualizatori ir tieši pretēji: `$( )` iepako sarakstu vienā elementā, bet `@( )` to atkal izpako.

{% include nav.html %}
