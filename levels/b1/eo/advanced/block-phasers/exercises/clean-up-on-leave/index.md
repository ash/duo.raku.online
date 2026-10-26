---
title: Purigi ĉe foriro
translations_gpt:
---

{% include menu.html %}

## Problemo

La vera forto de `LEAVE` estas, ke ĝi ruliĝas, *kiel ajn* la bloko estas forlasita. Tio inkluzivas fruan `return`.

Skribu subrutinon `work`, kies korpo komenciĝas per fazilo `LEAVE`, kiu presas `Cleanup`. Poste, ankoraŭ ene de la subrutino, presu `Working` kaj tuj revenu per `return`. Metu linion `say 'never reached'` post la `return`. Voku la subrutinon. La frua `return` preterlasas la lastan linion, sed `Cleanup` tamen estas presata.

## Ekzemplo

La programo presas:

```
Working
Cleanup
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
