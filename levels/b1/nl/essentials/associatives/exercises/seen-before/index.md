---
title: Eerder gezien?
---

{% include menu.html %}

## Probleem

Schrijf een programma met een lus die het volgende doet:

1. Vraag de gebruiker om een woord in te voeren.
2. Als het programma het woord al een keer heeft gezien, print dan `Gezien!`.
3. Als het programma het woord al meer dan een keer heeft gezien, print dan `Gezien 2 keer!` enzovoort.
3. Herhaal de lus.

## Voorbeeld

Zo kan het werken met het programma eruitzien:

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
