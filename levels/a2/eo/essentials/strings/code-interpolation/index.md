---
title: Koda interpolado
---

{% include menu.html %}

Koda interpolado estas la sekva nivelo de interpolado. Vi povas meti kodon rekte en ŝnuron en duoblaj citiloj. La kodo povas esti simpla. Ĝi ankaŭ povas esti kompleksa!

Skribu la kodon inter krampoj, `{` kaj `}`:

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

Jen unu uzo de ĉi tiu metodo. Kelkfoje variablo havas iom da teksto tuj post si. Erare, Raku povas legi tiun tekston kiel parton de la nomo. Por eviti tion, metu la variablon inter krampojn:

```raku
my $how-many = 5;
my $what = 'suit';
say "Estas $how-many {$what}s."; # Estas 5 vestoj.
```

Sen krampoj, Raku provas interpoli variablon `$whats`. Sed tia variablo ne ekzistas.

{% include nav.html %}
