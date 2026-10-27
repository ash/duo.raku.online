---
title: 'Risinājums: Izvade un kļūdas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my @data = 3, 5, 7;

my $sum = 0;
for @data -> $n {
    $sum += $n;
    $*ERR.say("running total: $sum");
}

$*OUT.say($sum);
```

🦋 Atrodiet programmu failā [output-and-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/output-and-error.raku).

## Izvade

Jūs redzat ekrānā abas plūsmas. Vispirms nāk uzkrātās summas, tad galīgais rezultāts:

```
running total: 3
running total: 8
running total: 15
15
```

Šeit mēs izmetam standarta kļūdu plūsmu. Paliek tikai īstā izvade:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Komentāri

1. `$*OUT` ir standarta izvades turis. `$*ERR` ir standarta kļūdu plūsmas turis. Katram no tiem ir sava metode `say`.

1. Katra cikla kārta pieskaita nākamo skaitli. Tad tā raksta uzkrāto summu uz `$*ERR`. Uz `$*OUT` iet tikai galīgā summa. Ekrānā progress un rezultāts izskatās vienādi. Bet tie iet pa dažādām plūsmām. `2>/dev/null` sūta standarta kļūdu plūsmu prom. Tāpēc paliek tikai galīgais `15`.

{% include nav.html %}
