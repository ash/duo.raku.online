---
title: De omgeving
translations_gpt:
---

{% include menu.html %}

Elk programma start met een verzameling _omgevingsvariabelen_. Dat zijn waarden met een naam, zoals `HOME`, `PATH` of `USER`, die het besturingssysteem levert. In Raku staan ze in de dynamische hash `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Om een omgevingsvariabele te lezen, gebruik je haar naam als sleutel in `%*ENV`. Omdat `%*ENV` een gewone hash is, kun je ook nagaan of een variabele gezet is. Je kunt haar ook wijzigen voor de programma's die je start:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Als je een sleutel in `%*ENV` zet, wordt hij deel van de omgeving. Elk programma dat je daarna met `run` of `shell` start, krijgt deze omgeving ook. Zo geef je instellingen door aan een kindprogramma:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

De variabele wordt in de omgeving van je programma gezet *voordat* het kind start. Dus heeft de shell die `run` start `GREETING` al in zijn eigen omgeving. Hij kan de waarde met `echo` weer afdrukken. Elke variabele die je zo zet, bereikt elk programma dat je later start.

De twigil `*` laat zien dat `%*ENV` een dynamische variabele is. Dat geldt ook voor `$*OUT`, die je zag in het deel over invoer en uitvoer. Een paar andere variabelen met een ster beschrijven de wereld van het draaiende programma. `@*ARGS` bevat de opdrachtregelargumenten, en `$*PROGRAM-NAME` is de naam van het script zelf. Samen helpen ze een programma de situatie te begrijpen waarin het gestart is.

{% include nav.html %}
