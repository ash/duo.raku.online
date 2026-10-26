---
title: Heredocs
translations_gpt:
---

{% include menu.html %}

Een _heredoc_ is een quoting-vorm voor tekst met meerdere regels. Hij gebruikt geen scheidingstekens rond de tekst. In plaats daarvan geef je een afsluitwoord op met `:to`. De string begint op de volgende regel. Hij loopt door tot een regel die alleen dat woord bevat:

```raku
my $text = q:to/END/;
Hello,
World!
END

print $text;
```

Dit drukt af:

```
Hello,
World!
```

Het afsluitwoord geeft aan waar de tekst eindigt. Hier is het `END`, maar elk woord is goed. Let op de `print`. De tekst houdt de nieuwe regel voor het afsluitwoord. Hij eindigt dus al met een regelafbreking. Met `say` zou je er een tweede krijgen, en een lege regel aan het einde. De heredoc begint met `q:to`, dus de tekst wordt niet geïnterpoleerd. Gebruik `qq:to` om variabelen te interpoleren:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Hier is een handig detail. De **inspringing van het afsluitwoord** wordt van elke regel van de tekst verwijderd. Zo kun je een heredoc laten inspringen zoals de code eromheen. Die inspringing komt dan niet in de string terecht:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Dit drukt dezelfde `Hello,` en `World!` af als in het eerste voorbeeld. Hier springt het afsluitende `END` acht spaties in. Daarom worden er acht spaties van elke regel verwijderd. De teruggegeven string is gewoon `Hello,\nWorld!`, zonder spaties aan het begin van de regels.

Het afsluitwoord bepaalt hoeveel spaties er worden verwijderd. Elke regel van de tekst moet dus minstens zo ver inspringen. Als een regel minder spaties aan het begin heeft, kan Raku niet alles verwijderen. Dan geeft Raku een waarschuwing: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Om dit te voorkomen, laat je het afsluitwoord niet dieper inspringen dan de regel die het minst inspringt. Heredocs zijn de natuurlijke keuze voor sjablonen, berichten en elke tekst met meerdere regels.

{% include nav.html %}
