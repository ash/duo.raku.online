---
title: Gebruik van `unless`
---

{% include menu.html %}

De [`!` operator](/nl/essentials/booleans/operations#negation) draait elke Booleaanse voorwaarde makkelijk om. Maar soms maakt deze `!` de expressie ingewikkelder. Dan is die moeilijker te lezen. In zulke gevallen kan `unless` helpen.

De voorwaarde van `unless` moet `False` zijn. Dan voert Raku het blok uit.

```raku
my $broken = False;

# ...Iets kan $broken hier op True zetten...
    
unless $broken {
    say "Maak je geen zorgen!";
    say "Wees gelukkig!";
}
```

Hier zijn twee versies van hetzelfde programma. Vergelijk ze:

Met `if` en `!`:

```raku
if !$broken { . . . }
```

Met `unless`:

```raku
unless $broken { . . . }
```

Je hebt dus een keuze. Kies in elke situatie wat voor jou beter voelt.

Je kunt geen `else`- of `elsif`-blok na `unless` zetten. Daarvoor moet je `if` gebruiken.

{% include nav.html %}
