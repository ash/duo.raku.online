---
title: Dumpi la datumstrukturon
---

{% include menu.html %}

## Problemo

Jen nestita datumstrukturo. Ĝi havas datumojn ene de aliaj datumoj:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Faru du aferojn per ĝi:

1. Elmontru `@data` per `dd`, en formo por programistoj.
2. Presu la saman formon kiel ĉenon. Metu la tekston `Structure: ` antaŭ ĝi.

## Ekzemplo

La programo presas du liniojn. Ili estas tre similaj:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
