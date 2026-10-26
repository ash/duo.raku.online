---
title: Du funkcioj en unu modulo
translations_gpt:
---

{% include menu.html %}

## Problemo

Kreu modulon kun la nomo `Calc` en la dosiero `Calc.rakumod`. Ĝi eksportas du subrutinojn: `add` kaj `mul`. Ĉiu el ili prenas du argumentojn. `add` redonas ilian sumon. `mul` redonas ilian produkton.

Poste skribu apartan programon. Ĝi uzas la modulon kaj presas `add(3, 4)` kaj `mul(3, 4)`. Ĉiu rezulto estas en sia propra linio.

## Ekzemplo

Rulu la programon kun la modulo sur la serĉvojo. Ĝi presas:

```console
$ raku -I. calc.raku
7
12
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
