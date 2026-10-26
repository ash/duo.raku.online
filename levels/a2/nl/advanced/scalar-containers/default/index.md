---
title: Standaardwaarden
translations_gpt:
---

{% include menu.html %}

Soms maak je een scalaire variabele aan. Maar je wijst er nog geen waarde aan toe. De container bewaart toch een waarde. Dat is zijn standaardwaarde. De standaardwaarde hangt af van het type van de variabele.

Dit programma gebruikt Raku niet op de beste manier. Maar het laat het idee zien:

```raku
my $int;
say $int + 5;
```

De uitvoer bevat `5`. Misschien verwachtte je dat. Misschien dacht je dat de standaardwaarde van `$int` gelijk is aan `0`. Maar het programma drukt ook een waarschuwing af:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Er zijn twee manieren om deze twijfel weg te nemen. Je kunt direct een waarde toewijzen:

```raku
my $int = 0;
say $int + 5; # 5
```

Of je kunt een standaardwaarde geven met de `is default`-eigenschap:

```raku
my $int is default(0);
say $int + 5; # 5
```

De standaardwaarde hoeft geen nul te zijn. Het kan elke waarde zijn die jij goed vindt. Bijvoorbeeld:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
