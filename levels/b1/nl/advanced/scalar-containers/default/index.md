---
title: Standaardwaarden
translations_gpt:
---

{% include menu.html %}

Soms maak je een nieuwe scalaire variabele aan zonder er meteen iets aan toe te wijzen. Ook dan bevat de container een waarde, zijn standaardwaarde. De exacte standaardwaarde hangt af van het type van de variabele.

Het volgende programma is niet de beste manier om Raku te gebruiken. Maar het laat het idee zien:

```raku
my $int;
say $int + 5;
```

De uitvoer bevat `5`. Dat verwachtte je misschien als je dacht dat de standaardwaarde van `$int` gelijk is aan `0`. Maar het programma drukt ook een waarschuwing af:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Om duidelijk te maken wat de waarde is, kun je die ofwel zelf toewijzen:

```raku
my $int = 0;
say $int + 5; # 5
```

Of je stelt een standaardwaarde in met de eigenschap `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

De standaardwaarde hoeft geen nul te zijn. Het kan elke waarde zijn die jij een goede keuze vindt, bijvoorbeeld:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
