---
title: Valori predefiniti
translations_gpt:
---

{% include menu.html %}

A volte create una variabile scalare. Ma non le assegnate ancora un valore. Il contenitore contiene comunque un valore. È il suo valore predefinito. Il valore predefinito dipende dal tipo della variabile.

Questo programma non usa Raku nel modo migliore. Ma mostra l'idea:

```raku
my $int;
say $int + 5;
```

L'output contiene `5`. Forse ve lo aspettavate. Forse pensavate che il valore predefinito di `$int` sia `0`. Ma il programma stampa anche un avvertimento:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Ci sono due modi per togliere questo dubbio. Potete assegnare un valore direttamente:

```raku
my $int = 0;
say $int + 5; # 5
```

Oppure potete dare un valore predefinito con il trait `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

Il valore predefinito non deve essere per forza zero. Può essere qualsiasi valore che vi sembra buono. Per esempio:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
