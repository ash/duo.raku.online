---
title: Modulos utendo
translations_gpt:
---

{% include menu.html %}

Ut modulo utaris, eum per enuntiatum `use` onera. Postea nomina quae modulus exportat adhibere potes. Est quasi ea ipse scripsisses.

Sume archivum `Greeting.rakumod` ex argumento superiore. Programma eo sic utitur:

```raku
use Greeting;

say hello('Anna');
```

`hello` notam `is export` habet. Itaque enuntiatum `use` id praesto facit. Programma id directe vocat:

```
Hello, Anna!
```

Raku modulum invenire debet. Itaque modulus in semita quaesitionis modulorum esse debet. Haec est series locorum ubi Raku modulos quaerit. Fortasse archivum moduli in eadem directoria est ac programma tuum. Tum Raku iube illic quaerere per optionem `-I.`. Punctum «directoriam currentem» significat:

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku modulos installatos sponte invenit. De eis postea disces, in [Modulis ex rete installandis](/la/advanced/installing-modules). Itaque `-I` tantum pro modulis iuxta programma tuum requiris.

{% include nav.html %}
