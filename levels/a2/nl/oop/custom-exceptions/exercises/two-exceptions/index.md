---
title: Oefening ’Twee exceptietypen‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Maak twee eigen exceptieklassen, `TooSmall` en `TooBig`. Dat zijn klassen voor je eigen fouten. Elke klasse erft van `Exception`. De methode `message` van `TooSmall` geeft `too small` terug. De methode `message` van `TooBig` geeft `too big` terug.

Schrijf een lus over de twee typen. Werp voor elk type een exceptie van dit type. Elke exceptie heeft een eigen blok. Voeg een `CATCH`-faser toe met een `when`-tak voor elk type. Voor `TooSmall` drukt hij `small` af. Voor `TooBig` drukt hij `big` af. Zo zie je dat beide takken draaien.

## Voorbeeld

Het programma drukt af:

```
small
big
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
