---
title: Komparoj kaj planoj
---

{% include menu.html %}

La modulo `Test` havas pli ol `ok` kaj `is`. Ĝi havas komparojn por diversaj specoj de valoroj. Jen la plej utilaj:

* `is` — kontrolas, ke du valoroj estas egalaj (kiel ĉenoj aŭ nombroj)
* `is-deeply` — kontrolas, ke du datumstrukturoj estas ekzakte egalaj, kaj ankaŭ iliaj tipoj
* `like` — kontrolas, ke ĉeno kongruas kun regula esprimo
* `isnt` — sukcesas, kiam du valoroj **ne** estas egalaj

Uzu `is-deeply` por tabeloj, asociaj tabeloj kaj datumoj en aliaj datumoj. Ĝi komparas la strukturon kaj la tipon ekzakte:

```raku
use Test;

my @reversed = (1, 2, 3).reverse;
is-deeply @reversed, [3, 2, 1], 'reversed';

done-testing;
```

Tio presas:

```
ok 1 - reversed
1..1
```

`is` ŝanĝas la valorojn en ĉenojn. Poste ĝi komparas ilin, sed ne tre strikte. `is-deeply` estas alia. Kun ĝi, la strukturoj devas vere kongrui. Notu, ke `done-testing` metas la planon `1..1` ĉe la fino, post la kontrolo.

`done-testing` povas kalkuli la testojn por vi. Sed vi ankaŭ povas doni la nombron ĉe la komenco, per `plan`. Tio helpas kontraŭ unu problemo. Foje testodosiero haltas tro frue. Tiam ĝi preterlasas iujn kontrolojn sen ia mesaĝo:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Nun la plano venas **unue**. Ĝi estas antaŭ la rezultoj:

```
1..2
ok 1 - first
ok 2 - second
```

Ĉi tie vi vidas, kiel `plan` diferencas de `done-testing`. `plan` presas la nombron `1..2` supre, antaŭ ol iuj kontroloj ruliĝas. `done-testing` presas ĝin tute ĉe la fino. Ĉiukaze, kun `plan 2` la rulo atendas ekzakte du testojn. Se ruliĝas malpli aŭ pli da testoj, la tuta aro de testoj malsukcesas. Uzu `plan`, se la nombro de testoj estas fiksita kaj vi konas ĝin. Uzu `done-testing`, se estas pli facile lasi la testan modulon kalkuli.

{% include nav.html %}
