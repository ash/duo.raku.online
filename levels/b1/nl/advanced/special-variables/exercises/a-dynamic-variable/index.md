---
title: Een dynamische variabele
---

{% include menu.html %}

## Probleem

Een dynamische variabele schrijf je met de `*`-twigil. Raku vindt hem door naar buiten te zoeken via de call stack, niet via lexicale scope. Dus hangt de waarde die een subroutine ziet af van wie hem heeft aangeroepen. Zo kan een blok de code die het aanroept met een andere identiteit laten draaien.

1. Declareer een dynamische variabele `$*user` met de waarde `'guest'`.
2. Schrijf een subroutine `whoami` die `running as ` print en daarna de huidige `$*user` (bijvoorbeeld `running as guest`). Hij heeft geen parameters, dus hij moet `$*user` direct lezen.
3. Roep `whoami` één keer aan op het bovenste niveau. Hij toont `guest`.
4. Maak daarna een blok dat `$*user` opnieuw declareert als `'admin'`. Roep daarbinnen *dezelfde* `whoami` nog een keer aan. Nu toont hij `admin`.

## Voorbeeld

Het programma print:

```
running as guest
running as admin
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
