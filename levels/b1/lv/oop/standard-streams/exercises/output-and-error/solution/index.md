---
title: 'Risinājums: Izvade un kļūdas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

Ekrānā parādās abas plūsmas. Vispirms nāk uzkrātās summas un tad galīgais rezultāts:

```
running total: 3
running total: 8
running total: 15
15
```

Ja jūs izmetat standarta kļūdu plūsmu, paliek tikai īstā izvade:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Komentāri

1. `$*OUT` un `$*ERR` ir standarta izvades un standarta kļūdu plūsmas turi. Katram no tiem ir sava metode `say`.

1. Katra kārta pieskaita nākamo skaitli un raksta uzkrāto summu uz `$*ERR`. Uz `$*OUT` iet tikai galīgā summa. Ekrānā progress un rezultāts izskatās līdzīgi. Bet tie iet pa dažādām plūsmām. Tāpēc, kad `2>/dev/null` sūta standarta kļūdu plūsmu prom, paliek tikai galīgais `15`.

{% include nav.html %}
