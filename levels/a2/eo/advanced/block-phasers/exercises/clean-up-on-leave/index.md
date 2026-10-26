---
title: Purigi ĉe foriro
translations_gpt:
---

{% include menu.html %}

## Problemo

La plej bona afero pri `LEAVE` estas jena. Ĝi ruliĝas, *kiel ajn* la programo forlasas la blokon. Ĝi ruliĝas eĉ post frua `return`.

Skribu subrutinon `work`. Ĝia korpo komenciĝas per fazilo `LEAVE`. La fazilo presas `Cleanup`. Poste, ankoraŭ en la subrutino, presu `Working`. Post tio, tuj uzu `return`. Metu linion `say 'never reached'` post la `return`. Voku la subrutinon. La frua `return` preterlasas la lastan linion. Sed la programo tamen presas `Cleanup`.

## Ekzemplo

La programo presas:

```
Working
Cleanup
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
