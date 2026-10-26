---
title: Een dynamische variabele
---

{% include menu.html %}

## Probleem

Een dynamische variabele heeft de twigil `*`. Raku zoekt hem via de call stack, niet via de lexicale scope. Dus kan een subroutine verschillende waarden zien. De waarde hangt af van wie de subroutine aanroept. Zo kan een blok de code die het aanroept als iemand anders laten draaien.

1. Declareer een dynamische variabele `$*user` met de waarde `'guest'`.
2. Schrijf een subroutine `whoami`. Die print `running as ` en daarna de huidige `$*user`, bijvoorbeeld `running as guest`. Hij heeft geen parameters. Hij moet `$*user` direct lezen.
3. Roep `whoami` één keer aan op het bovenste niveau. Hij toont `guest`.
4. Maak daarna een blok. Declareer daarin `$*user` opnieuw als `'admin'`. Roep daar *dezelfde* `whoami` aan. Nu toont hij `admin`.

## Voorbeeld

Het programma print:

```
running as guest
running as admin
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
