---
title: Eraro pri negativa nombro
translations_gpt:
---

{% include menu.html %}

## Problemo

Difinu propran esceptoklason kun la nomo `Negative`. Ĝi heredas de `Exception` kaj havas atributon `n`. Ĝia metodo `message` redonas `<n> is negative`.

Skribu subrutinon `check($n)`. Kiam ĝia argumento estas sub nulo, ĝi ĵetas `Negative`, kiu portas ĉi tiun `n`. Alie, ĝi redonas la argumenton. Poste, en bloko, voku `check(-5)`. Uzu fazeron `CATCH` kun `when Negative` por presi la mesaĝon de la escepto.

Fine, post la bloko, ĵetu alian `Negative` kun `n` egala al `-10`. Neniu `CATCH` gardas ĉi tiun lokon. Tio montras, ke tia escepto finas la programon.

## Ekzemplo

La programo presas:

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
