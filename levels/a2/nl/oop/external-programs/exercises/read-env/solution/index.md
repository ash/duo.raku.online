---
title: 'Oplossing: Geef een variabele aan een kind door'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Je kunt de broncode vinden in het bestand [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Uitvoer

```
3
```

## Opmerkingen

1. `spurt` maakt `notes.txt` met drie regels. Daarna zetten we `%*ENV<NOTES>` op de naam van het bestand. Nu staat de bestandsnaam dus in de omgeving. Elk kindprogramma krijgt deze omgeving.

1. Het `shell`-commando krijgt deze omgeving. Het vervangt `$NOTES` door `notes.txt`. Daarna stuurt het commando het bestand naar `wc -l`. `wc -l` telt de regels van het bestand. De omleiding `< "$NOTES"` is belangrijk. Daardoor is de uitvoer alleen het getal `3`. We vangen dit getal op met `:out` en trimmen het.

1. Aan het eind ruimen we op in Raku met `unlink`. Daarvoor hebben we geen shell nodig. Een bestand verwijderen is een eenvoudige bewerking op het bestandssysteem. Dus is er geen reden om daar nog een proces voor te starten. Een proces is een draaiend programma.

{% include nav.html %}
