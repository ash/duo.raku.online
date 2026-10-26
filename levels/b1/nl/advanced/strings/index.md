---
title: Strings
translations_gpt:
---

{% include menu.html %}

In het deel Essentials leerde je [hoe je strings opbouwt](/nl/essentials/strings). Je zag concatenatie, interpolatie en de lengte van een string. Strings hebben ook een grote verzameling methoden. Deze sectie verzamelt de nuttigste. Zoeken met [reguliere expressies](/nl/regexes) is een apart, groter onderwerp. Dat komt later in een eigen deel aan bod.

Drie methoden veranderen hoofdletters en kleine letters in een string:

```raku
say 'raku'.uc; # RAKU  — hoofdletters
say 'RAKU'.lc; # raku  — kleine letters
say 'raku'.tc; # Raku  — beginhoofdletter
```

De methode `flip` draait de volgorde van de tekens in een string om:

```raku
say 'Raku'.flip; # ukaR
```

En de operator `x` herhaalt een string zo vaak als je vraagt:

```raku
say 'ab' x 3; # ababab
```

De volgende onderwerpen laten zien hoe je in strings zoekt. Ze laten ook zien hoe je strings in stukken splitst en weer aan elkaar plakt.

{% include nav.html %}
