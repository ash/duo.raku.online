---
title: Rulado de testoj
---

{% include menu.html %}

Unu testodosiero estas nur Raku-programo. Do vi povas ruli ĝin kiel ĉiun programon:

```
raku t/01-basic.rakutest
```

Ĝi presas sian TAP-eligon sur la ekrano. Sed eble vi havas pli ol unu aŭ du dosierojn. Tiam vi bezonas _testorulanton_. Ĝi rulas ĉiujn testojn en dosierujo. Poste ĝi donas mallongan resumon de la rezultoj. La testorulanto de Raku estas `prove6`:

```
prove6 t/
```

Tio rulas ĉiun testodosieron sub `t/`. Ĝi montras, kiom da dosieroj kaj testoj sukcesis. Ĉe la fino, ĝi donas unu rezulton por ĉio: sukceso aŭ malsukceso. Tion vi legas multe pli facile ol la krudan TAP el ĉiu dosiero.

Eble distribuo havas `META6.json`. Tiam la modula ilo rulas ĝiajn testojn por vi:

```
zef test .
```

`zef test` trovas la dosierujon `t/`. Ĝi rulas ĉiujn testojn kaj montras la rezulton. La sama afero okazas aŭtomate, antaŭ ol iu instalas distribuon. Do testoj havas du taskojn. Vi rulas ilin per `prove6`, dum vi laboras pri via kodo. Kaj la ekosistemo rulas ilin, antaŭ ol iu instalas distribuon. Tiel ĝi kontrolas la distribuon.

> Testodosieroj havas la sufikson `.rakutest` aŭ `.t`. Kutime iliaj nomoj komenciĝas per nombro, ekzemple `t/01-basic.rakutest`.

{% include nav.html %}
