---
title: Proxying van methode-aanroepen
translations_gpt:
---

{% include menu.html %}

Een scalaire container is in feite een object van het type `Scalar`. In de meeste gevallen merk je de container niet eens als je een scalar gebruikt. Je hoeft er niet aan te denken. Je kunt je voorstellen dat je direct met de waarden erin werkt.

Dit werkt omdat een scalaire container methodeaanroepen doorstuurt naar zijn waarde. Na `my $lang = 'Raku'` kun je bijvoorbeeld de `.chars`-methode aanroepen op de variabele:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

Het programma drukt `4` af, het aantal tekens in de string `'Raku'`. Roep nu `.chars` direct aan op de stringwaarde, niet op de containervariabele. Het resultaat is precies hetzelfde:

```raku
say 'Raku'.chars; # 4
```

Met andere woorden: de container stuurt de `.chars`-aanroep stil door naar de string erin. Daarna geeft hij het resultaat aan je terug.

{% include nav.html %}
