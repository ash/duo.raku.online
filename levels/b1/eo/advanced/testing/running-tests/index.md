---
title: Rulado de testoj
---

{% include menu.html %}

Ununura testodosiero estas simple Raku-programo. Do vi povas ruli ĝin rekte:

```
raku t/01-basic.rakutest
```

Ĝi presas sian TAP-eligon sur la ekrano. Kiam vi havas pli ol unu aŭ du dosierojn, vi bezonas _testorulanton_. Ĝi rulas tutan dosierujon de testoj kaj donas resumon de la rezultoj. La rulanto por Raku estas `prove6`:

```
prove6 t/
```

Tio rulas ĉiun testodosieron sub `t/` kaj raportas, kiom da dosieroj kaj testoj sukcesis. Ĉe la fino estas unu ĝenerala rezulto, sukceso aŭ malsukceso. Tio estas multe pli facile legebla ol la kruda TAP el ĉiu dosiero.

Se distribuo havas `META6.json`, la modula ilo povas ruli ĝiajn testojn por vi:

```
zef test .
```

`zef test` trovas la dosierujon `t/`, rulas la testojn kaj raportas la rezulton. Ekzakte la sama afero okazas aŭtomate, antaŭ ol distribuo estas instalita. Do testoj havas du taskojn. Vi rulas ilin per `prove6`, dum vi programas. La ekosistemo rulas ilin por kontroli distribuon, antaŭ ol iu ajn instalas ĝin.

> Testodosieroj havas la sufikson `.rakutest` (aŭ `.t`). Ili kutime havas nombrojn en siaj nomoj, kiel en `t/01-basic.rakutest`.

{% include nav.html %}
