---
title: Modulos utendo
translations_gpt:
---

{% include menu.html %}

Ut modulo utaris, eum per enuntiatum `use` onera. Postea nomina quae modulus exportat praesto sunt. Eis uti potes ac si ea ipse scripsisses.

Ecce quomodo programma archivo `Greeting.rakumod` ex argumento superiore utitur:

```raku
use Greeting;

say hello('Anna');
```

`hello` cum `is export` notatum est, itaque enuntiatum `use` id praesto facit. Programma id directe vocat:

```
Hello, Anna!
```

Raku modulum solum invenire potest si in semita quaesitionis modulorum est. Archivum moduli fortasse in eadem directoria est ac programma tuum. Hoc casu, Raku iube illic quaerere per optionem `-I.`. Punctum «directoriam currentem» significat:

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku modulos installatos sponte invenit. Postea tractantur, in [Modulis ex rete installandis](/la/advanced/installing-modules). Itaque optione `-I` tantum opus est pro modulis iuxta programma tuum.

{% include nav.html %}
