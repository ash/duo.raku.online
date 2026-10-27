---
title: Met bestanden werken
translations_gpt:
---

{% include menu.html %}

In het eenvoudigste geval lees of schrijf je een heel bestand in één keer.

De routine `spurt` schrijft een string naar een bestand. Hij maakt het bestand aan, of vervangt de inhoud als het bestand al bestaat:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

De routine `slurp` leest het hele bestand terug in een string:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Samen slaan `spurt` en `slurp` gegevens op en laden ze weer in, met maar twee korte aanroepen. We gebruiken hier `print` in plaats van `say`, omdat de tekst al op een newline eindigt.

Deze routines werken met het hele bestand in één keer. Ze zijn het best voor bestanden die klein genoeg zijn om makkelijk in het geheugen te passen. Voor grotere bestanden gebruik je een [bestandshandle](/nl/oop/file-handles). Je hebt er ook een nodig om regel voor regel met een bestand te werken. We behandelen bestandshandles aan het eind van deze sectie. Het volgende onderwerp laat zien hoe je aan een bestand toevoegt in plaats van het te vervangen.

{% include nav.html %}
