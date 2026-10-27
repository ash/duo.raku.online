---
title: Met bestanden werken
translations_gpt:
---

{% include menu.html %}

Dit is de makkelijkste manier om met een bestand te werken. Je leest of schrijft het hele bestand in één keer.

De routine `spurt` schrijft een string naar een bestand. Hij maakt het bestand aan. Of, als het bestand er al is, vervangt hij de oude inhoud:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

De routine `slurp` leest het hele bestand. Hij geeft je de inhoud als een string:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Met `spurt` en `slurp` sla je gegevens op en laad je ze weer in. Je hebt maar twee korte aanroepen nodig. Hier gebruiken we `print` en niet `say`. De reden is dat de tekst al op een newline eindigt.

Deze routines werken met het hele bestand in één keer. Ze zijn goed voor kleine bestanden. Een klein bestand past makkelijk in het geheugen. Voor een groot bestand gebruik je een [bestandshandle](/nl/oop/file-handles). Die gebruik je ook om regel voor regel met een bestand te werken. Je leert erover aan het eind van deze sectie. Het volgende onderwerp laat zien hoe je iets aan een bestand toevoegt. De oude inhoud van het bestand blijft dan staan.

{% include nav.html %}
