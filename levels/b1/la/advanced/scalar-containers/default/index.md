---
title: Valores praedefiniti
---

{% include menu.html %}

Interdum novam variabilem scalarem creas nec statim quicquam ei assignas. Etiam tum continens valorem tenet, valorem defectus suum. Valor defectus exactus a typo variabilis pendet.

Programma sequens non est optimus modus Raku utendi. Sed ideam ostendit:

```raku
my $int;
say $int + 5;
```

Output `5` continet. Hoc fortasse exspectabas, si putabas valorem defectus `$int` esse `0`. Sed programma etiam monitum imprimit:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Ut valor clarus sit, aut eum ipse assignare potes:

```raku
my $int = 0;
say $int + 5; # 5
```

Aut valorem defectus cum tratto `is default` ponere potes:

```raku
my $int is default(0);
say $int + 5; # 5
```

Valor defectus non necessario zero est. Quilibet valor esse potest quem bonam electionem putas, exempli gratia:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
