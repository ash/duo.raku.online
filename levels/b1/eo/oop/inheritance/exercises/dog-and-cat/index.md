---
title: Dungitoj kaj roloj
translations_gpt:
---

{% include menu.html %}

## Problemo

Difinu bazan klason `Employee` kun atributo `name` kaj du metodoj. La metodo `role` redonas `'staff'`. La metodo `badge` redonas la ĉenon `<name> - <role>` per sia propra metodo `role`.

Poste difinu du idajn klasojn, `Manager` kaj `Intern`, kiuj heredas de `Employee`. Ili superregas `role`: ĝi redonas `'manager'` en `Manager` kaj `'intern'` en `Intern`.

Presu la insignojn de manaĝero nomata `Anna` kaj de staĝanto nomata `Bob`.

## Ekzemplo

La programo presas:

```
Anna - manager
Bob - intern
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
