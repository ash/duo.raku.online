---
title: Oefening ’Een schrijfbare parameter‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Normaal zijn de parameters van een subroutine alleen-lezen. Een routine kan de variabele van de aanroeper dus niet veranderen. De trait `is rw` haalt deze beperking weg.

Schrijf een subroutine `double`. Die heeft één parameter met de trait `is rw`. De subroutine verdubbelt de parameter zelf: `$n *= 2`. Roep `double` aan met een variabele met de waarde `21`. Druk dan de variabele af. Die is nu `42`.

## Voorbeeld

Het programma drukt af:

```
42
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
