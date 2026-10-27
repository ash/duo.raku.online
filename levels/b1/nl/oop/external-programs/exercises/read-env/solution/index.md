---
title: 'Oplossing: Geef een variabele aan een kind door'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `spurt` maakt `notes.txt` met drie regels aan. Daarna zetten we `%*ENV<NOTES>` op die naam. Zo komt de bestandsnaam in de omgeving, die elk kindprogramma krijgt.

1. Het `shell`-commando krijgt die omgeving en vervangt `$NOTES` door `notes.txt`. Daarna stuurt het commando het bestand naar `wc -l`, dat de regels telt. Door de omleiding `< "$NOTES"` is de uitvoer alleen het getal `3`. We vangen het op met `:out` en trimmen het.

1. Ten slotte gebeurt het opruimen weer in Raku met `unlink`, en is er geen shell nodig. Een bestand verwijderen is een eenvoudige bewerking op het bestandssysteem. Er is geen reden om daar nog een proces voor te starten.

{% include nav.html %}
