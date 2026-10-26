---
title: Heredocs
translations_gpt:
---

{% include menu.html %}

Een _heredoc_ is een quoting-vorm voor tekst met veel regels. Hij heeft geen scheidingstekens rond de tekst. In plaats daarvan geef je een afsluitwoord op met `:to`. Het afsluitwoord geeft het einde aan. De string begint op de volgende regel. Hij gaat door tot een regel met alleen dat woord:

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

Het afsluitwoord geeft het einde van de tekst aan. Hier is het `END`, maar je kunt elk woord gebruiken. Kijk naar de `print`. De tekst houdt de nieuwe regel voor het afsluitwoord. Daarom eindigt de tekst al met een regelafbreking. `say` voegt er een tweede toe. Dan krijg je een lege regel aan het einde. Deze heredoc begint met `q:to`. Daarom interpoleert Raku de tekst niet. Gebruik `qq:to` om variabelen te interpoleren:

```raku
my $name = 'Anna';

my $greeting = qq:to/EOF/;
Dear $name,
Welcome!
EOF

print $greeting;
```

Hier is een handig detail. Kijk naar de **inspringing van het afsluitwoord**. Raku haalt die van elke regel van de tekst weg. Zo kun je een heredoc laten inspringen zoals de code eromheen. De inspringing komt niet in de string:

```raku
sub greeting {
    return q:to/END/;
        Hello,
        World!
        END
}

print greeting;
```

Dit drukt dezelfde `Hello,` en `World!` af als het eerste voorbeeld. Hier staan er acht spaties voor het afsluitende `END`. Daarom haalt Raku acht spaties van elke regel weg. De functie geeft alleen `Hello,\nWorld!` terug. Er staan geen spaties aan het begin.

Het afsluitwoord bepaalt hoeveel spaties Raku weghaalt. Elke regel van de tekst heeft dus minstens zoveel spaties nodig. Misschien heeft een regel minder spaties. Dan kan Raku ze niet allemaal weghalen. Raku waarschuwt: *Asked to remove 8 spaces, but the shortest indent is 4 spaces*. Voorkom deze waarschuwing. Laat het afsluitwoord nooit verder inspringen dan een regel van de tekst. Heredocs zijn de natuurlijke keuze voor sjablonen en berichten. Eigenlijk zijn ze goed voor elke tekst met meerdere regels.

{% include nav.html %}
