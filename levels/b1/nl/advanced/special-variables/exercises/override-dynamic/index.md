---
title: De dynamische overschrijven
---

{% include menu.html %}

## Probleem

Laat zien hoe een dynamische variabele door een routine in het midden stroomt. Die routine weet er niets van.

Schrijf een subroutine `log-it($msg)` die het bericht print met een dynamische variabele `$*prefix` ervoor. Schrijf een tweede subroutine `task` die alleen `log-it('working')` aanroept. Hij noemt zelf nooit `$*prefix`. Roep daarna `task` twee keer aan, elke keer vanuit een blok. Elk blok zet `$*prefix` op een andere waarde: eerst `INFO`, dan `DEBUG`.

## Voorbeeld

Het programma print:

```
INFO: working
DEBUG: working
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
