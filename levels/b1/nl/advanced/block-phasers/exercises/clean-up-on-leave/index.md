---
title: Opruimen bij verlaten
translations_gpt: Oefening 'Opruimen bij verlaten'
---

{% include menu.html %}

## Probleem

De echte kracht van `LEAVE` is dat hij draait *hoe* het blok ook verlaten wordt. Dat geldt ook voor een vroege `return`.

Schrijf een subroutine `work` waarvan de body begint met een `LEAVE`-phaser die `Cleanup` afdrukt. Druk daarna, nog steeds binnen de subroutine, `Working` af en ga meteen terug met `return`. Zet een regel `say 'never reached'` na de `return`. Roep de subroutine aan. De vroege `return` slaat de laatste regel over, maar `Cleanup` wordt toch afgedrukt.

## Voorbeeld

Het programma drukt af:

```
Working
Cleanup
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
