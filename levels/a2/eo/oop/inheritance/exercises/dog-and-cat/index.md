---
title: Dungitoj kaj roloj
translations_gpt:
---

{% include menu.html %}

## Problemo

Faru bazan klason `Employee`. Ĝi estas la patra klaso de la aliaj klasoj. Ĝi havas atributon `name` kaj du metodojn. La metodo `role` redonas `'staff'`. La metodo `badge` redonas la ĉenon `<name> - <role>`. Por la rolo, ĝi vokas sian propran metodon `role`.

Poste faru du idajn klasojn, `Manager` kaj `Intern`. Ili heredas de `Employee`. Ĉiu el ili superregas `role`. Tio signifas, ke ĝi havas sian propran version de ĉi tiu metodo. En `Manager`, `role` redonas `'manager'`. En `Intern`, ĝi redonas `'intern'`.

Presu la insignon de manaĝero kun la nomo `Anna`. Poste presu la insignon de staĝanto kun la nomo `Bob`.

## Ekzemplo

La programo presas:

```
Anna - manager
Bob - intern
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
