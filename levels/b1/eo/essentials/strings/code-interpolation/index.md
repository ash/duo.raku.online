---
title: Koda interpolado
---

{% include menu.html %}

Koda interpolado estas la sekva nivelo de interpolado. Ĝi permesas al vi meti kodon rekte en duoble-cititan ŝnuron. La kodo povas esti simpla, aŭ eĉ kompleksa!

La kodo por interpolado staras inter krampoj:

```raku
my $a = 10;
my $b = 20;
say "La sumo de $a kaj $b estas {$a + $b}.";
```

La programo presas:

```console
$ raku t.raku 
La sumo de 10 kaj 20 estas 30.
```

## Variabloj denove

Unu uzo de ĉi tiu metodo estas, kiam iu teksto devas sekvi variablon. Tiun tekston oni povus erare legi kiel la reston de la nomo de la variablo. Por eviti tion, metu la variablon inter krampojn:

```raku
my $how-many = 5;
my $what = 'suit';
say "Estas $how-many {$what}s."; # Estas 5 vestoj.
```

Sen krampoj, Raku provus interpoli `$whats`, variablon, kiu ne ekzistas.

{% include nav.html %}
