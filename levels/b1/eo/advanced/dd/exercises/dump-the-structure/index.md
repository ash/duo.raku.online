---
title: Dumpi la datumstrukturon
---

{% include menu.html %}

## Problemo

Vi havas la jenan nestitan datumstrukturon:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Faru du aferojn per ĝi:

1. Uzu `dd` por presi elmontraĵon de `@data` por programistoj.
2. Presu la saman reprezenton kiel ĉenon, kiu komenciĝas per la teksto `Structure: `.

## Ekzemplo

La programo presas du similajn liniojn:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
