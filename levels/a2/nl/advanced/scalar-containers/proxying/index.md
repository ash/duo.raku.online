---
title: Proxying van methode-aanroepen
translations_gpt:
---

{% include menu.html %}

Een scalaire container is eigenlijk een object van het type `Scalar`. Meestal zie je deze container helemaal niet. Je hoeft er niet aan te denken. Je kunt je voorstellen dat je direct met de waarden erin werkt.

Waarom werkt dit? Een scalaire container stuurt methodeaanroepen door naar de waarde erin. Neem bijvoorbeeld de toewijzing `my $lang = 'Raku'`. Daarna kun je de `.chars`-methode aanroepen op de variabele:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

Het programma drukt `4` af. Dat is het aantal tekens in de string `'Raku'`. Roep nu `.chars` aan op de stringwaarde zelf, niet op de variabele. Het resultaat is precies hetzelfde:

```raku
say 'Raku'.chars; # 4
```

De container stuurt de `.chars`-aanroep dus stil door naar zijn string. Daarna geeft hij het resultaat aan je terug.

{% include nav.html %}
