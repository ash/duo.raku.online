---
title: Eraro pri negativa nombro
translations_gpt:
---

{% include menu.html %}

## Problemo

Faru propran esceptoklason `Negative`. Ĝi estas klaso por viaj propraj eraroj. Ĝi heredas de `Exception`. Ĝi havas atributon `n`. Ĝia metodo `message` redonas `<n> is negative`.

Skribu subrutinon `check($n)`. Se ĝia argumento estas malpli ol nulo, ĝi ĵetas `Negative`. Ĉi tiu `Negative` tenas la `n`. Alie, la subrutino redonas la argumenton. Poste voku `check(-5)` ene de bloko. Aldonu fazeron `CATCH` kun `when Negative`. Ĝi presas la mesaĝon de la escepto.

Fine, post la bloko, ĵetu ankoraŭ unu `Negative`. Ĝia `n` estas `-10`. Neniu `CATCH` estas tie por kapti ĝin. Tio montras, kio okazas tiam. La escepto finas la programon.

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
