---
title: Oefening ’Noem de fout‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Schrijf een subroutine `risky` die `die 'sub failed'` doet. Roep haar daarna aan vanuit een blok met een `CATCH`-faser. De `CATCH` moet de typenaam van de exceptie afdrukken met `.^name`. Daarna moet hij haar melding afdrukken met `.message`. Dit laat zien dat `CATCH` excepties afhandelt uit code die het blok *aanroept*. De `die` hoeft niet direct in het blok te staan.

## Voorbeeld

Het programma drukt af:

```
X::AdHoc
sub failed
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
