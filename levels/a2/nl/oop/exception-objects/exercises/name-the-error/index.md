---
title: Oefening ’Noem de fout‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Schrijf een subroutine `risky`. Ze doet `die 'sub failed'`. Roep `risky` daarna aan in een blok met een `CATCH`-faser. Eerst drukt de `CATCH` de typenaam van de exceptie af, met `.^name`. Daarna drukt hij haar melding af, met `.message`. Dit laat nog iets zien over `CATCH`. Hij handelt ook excepties af uit code die het blok *aanroept*. De `die` hoeft niet in het blok zelf te staan.

## Voorbeeld

Het programma drukt af:

```
X::AdHoc
sub failed
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
