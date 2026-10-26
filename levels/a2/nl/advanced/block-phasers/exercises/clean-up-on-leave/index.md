---
title: Opruimen bij verlaten
translations_gpt: Oefening 'Opruimen bij verlaten'
---

{% include menu.html %}

## Probleem

Het beste aan `LEAVE` is dit. Hij draait *hoe* het programma het blok ook verlaat. Hij draait zelfs na een vroege `return`.

Schrijf een subroutine `work`. Zijn body begint met een `LEAVE`-phaser. De phaser drukt `Cleanup` af. Druk daarna, nog in de subroutine, `Working` af. Gebruik dan meteen `return`. Zet een regel `say 'never reached'` na de `return`. Roep de subroutine aan. De vroege `return` slaat de laatste regel over. Maar het programma drukt toch `Cleanup` af.

## Voorbeeld

Het programma drukt af:

```
Working
Cleanup
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
