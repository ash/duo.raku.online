---
title: Oefening ’Noteer een waarschuwing‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Een programma werkt met een waarde, en die waarde blijkt negatief te zijn. Als de waarde onder nul is, gebruik dan `note` om een waarschuwing naar de standaardfout te sturen. Gebruik `say` om het echte resultaat, de absolute waarde, naar de standaarduitvoer te sturen. Gebruik de waarde `-3`.

## Voorbeeld

Beide regels verschijnen op het scherm:

```
Warning: the value is negative
3
```

Als je de standaardfout weggooit, blijft alleen het resultaat over:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
