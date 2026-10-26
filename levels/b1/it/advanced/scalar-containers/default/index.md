---
title: Valori predefiniti
translations_gpt:
---

{% include menu.html %}

A volte create una nuova variabile scalare senza assegnarle subito niente. Anche allora, il contenitore contiene un valore, il suo valore predefinito. Il valore predefinito esatto dipende dal tipo della variabile.

Il programma seguente non è il modo migliore di usare Raku. Ma mostra l'idea:

```raku
my $int;
say $int + 5;
```

L'output contiene `5`. Ve lo potevate aspettare, se pensavate che il valore predefinito di `$int` fosse `0`. Ma il programma stampa anche un avvertimento:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Per rendere chiaro qual è il valore, potete assegnarlo voi stessi:

```raku
my $int = 0;
say $int + 5; # 5
```

Oppure potete impostare un valore predefinito con il trait `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

Il valore predefinito non deve essere per forza zero. Può essere qualsiasi valore che vi sembra una buona scelta, per esempio:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
