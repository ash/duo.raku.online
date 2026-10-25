---
title: Eerder gezien?
---

{% include menu.html %}

## Probleem

Schrijf een programma met een lus. De lus doet deze dingen:

1. Vraag de gebruiker om een woord.
2. Als de gebruiker dit woord al een keer eerder heeft ingevoerd, print dan `Gezien!`.
3. Als de gebruiker het al meer dan een keer eerder heeft ingevoerd, print dan `Gezien 2 keer!`, enzovoort.
3. Herhaal de lus.

## Voorbeeld

Hier is een voorbeeld van het gebruik van het programma:

```console
$ raku seen-before.raku
Woord: Ik
Woord: nooit
Woord: zag
Woord: een
Woord: zag
Gezien!
Woord: dat
Woord: zag
Gezien 2 keer!
Waar
Woord: als
Woord: dat
Gezien!
Woord: zag
Gezien 3 keer!
Waar
Woord: gezaagd
Woord: ^C
```

Om het programma te stoppen, druk op `Ctrl+C`.

## Oplossing

✅ [Zie de oplossing](solution)

{% include nav.html %}
