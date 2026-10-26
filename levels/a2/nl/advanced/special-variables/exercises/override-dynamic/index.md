---
title: De dynamische overschrijven
---

{% include menu.html %}

## Probleem

Laat zien hoe een dynamische variabele door een routine in het midden gaat. Deze routine weet niets van de variabele.

Schrijf een subroutine `log-it($msg)`. Die print het bericht. Voor het bericht print hij een dynamische variabele `$*prefix`. Schrijf een tweede subroutine, `task`. Die roept alleen `log-it('working')` aan. Hij gebruikt zelf nooit `$*prefix`. Roep daarna `task` twee keer aan. Roep hem elke keer aan vanuit een blok. Elk blok geeft `$*prefix` een andere waarde: eerst `INFO`, dan `DEBUG`.

## Voorbeeld

Het programma print:

```
INFO: working
DEBUG: working
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
