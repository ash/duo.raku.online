---
title: Gebruik van `unless`
---

{% include menu.html %}

Met de [`!` operator](/nl/essentials/booleans/operations#negation) kun je elke Booleaanse voorwaarde makkelijk omdraaien. Maar soms maakt de extra `!` de expressie zwaarder en moeilijker te lezen. In zulke gevallen kan `unless` je vriend zijn.

Raku voert het `unless`-blok uit als zijn voorwaarde `False` is.

```raku
my $broken = False;

# ...Iets kan $broken hier op True zetten...
    
unless $broken {
    say "Maak je geen zorgen!";
    say "Wees gelukkig!";
}
```

Vergelijk twee versies van hetzelfde programma:

Met `if` en ontkenning:

```raku
if !$broken { . . . }
```

Met `unless`:

```raku
unless $broken { . . . }
```

Je hebt beide opties, dus je kunt altijd kiezen wat in elke situatie beter voelt.

Let op dat je geen `else`- of `elsif`-blok na `unless` kunt zetten. Als je er een nodig hebt, kun je alleen `if` gebruiken.

{% include nav.html %}
