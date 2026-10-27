---
title: De omgeving
translations_gpt:
---

{% include menu.html %}

Elk programma start met een verzameling _omgevingsvariabelen_. Elke variabele is een waarde met een naam. Een paar voorbeelden zijn `HOME`, `PATH` en `USER`. Het besturingssysteem geeft deze waarden aan het programma. In Raku vind je ze in de dynamische hash `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Je leest een omgevingsvariabele via haar naam. Gebruik de naam als sleutel in `%*ENV`. `%*ENV` is een gewone hash. Dus kun je ook kijken of een variabele gezet is. Je kunt haar zelfs wijzigen voor de programma's die je start:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Je kunt een sleutel in `%*ENV` zetten. Dan wordt de sleutel deel van de omgeving. Nu start je een programma met `run` of `shell`. Dit programma is een kind van jouw programma. Elk kindprogramma krijgt dezelfde omgeving. Zo geef je instellingen door aan een kindprogramma:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Je programma zet de variabele *voordat* het kind start. Hier start `run` een shell als kind. Een shell is een programma dat commando's leest en uitvoert. Deze shell heeft `GREETING` al in zijn eigen omgeving. Dus kan hij de waarde met `echo` weer afdrukken. Je kunt elke variabele op deze manier zetten. Die bereikt dan elk programma dat je later start.

De twigil `*` vertelt je dat `%*ENV` een dynamische variabele is. Een twigil is een teken na de sigil. `$*OUT` is ook een dynamische variabele. Je kent hem uit het deel over invoer en uitvoer. Een paar andere variabelen met een ster vertellen iets over het draaiende programma. `@*ARGS` bevat de opdrachtregelargumenten. Dat zijn de waarden na de programmanaam in het commando. `$*PROGRAM-NAME` is de naam van het script zelf. Samen vertellen deze variabelen een programma hoe het gestart is.

{% include nav.html %}
