---
title: Komparoj kaj planoj
---

{% include menu.html %}

Krom `ok` kaj `is`, la modulo `Test` havas komparojn por diversaj specoj de valoroj. Jen la plej utilaj:

* `is` — kontrolas, ĉu du valoroj estas egalaj (kiel ĉenoj aŭ nombroj)
* `is-deeply` — kontrolas, ke du datumstrukturoj estas ekzakte egalaj, kune kun iliaj tipoj
* `like` — kontrolas, ke ĉeno kongruas kun regula esprimo
* `isnt` — sukcesas, kiam du valoroj **ne** estas egalaj

`is-deeply` estas la ĝusta elekto por tabeloj, asociaj tabeloj kaj nestitaj datumoj. Ĝi komparas kaj la strukturon kaj la tipon ekzakte:

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

`is` ŝanĝus la valorojn en ĉenojn kaj komparus ilin malstrikte. Sed `is-deeply` postulas, ke la strukturoj vere kongruu. Notu, ke `done-testing` metas la planon `1..1` ĉe la fino, post la kontrolo.

Vi ne devas lasi `done-testing` kalkuli la testojn por vi. Anstataŭe, vi povas doni la nombron ĉe la komenco per `plan`. Tio protektas vin kontraŭ testodosiero, kiu haltas frue kaj silente preterlasas iujn kontrolojn:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Ĉi-foje la plano venas **unue**, antaŭ la rezultoj:

```
1..2
ok 1 - first
ok 2 - second
```

Jen la diferenco de `done-testing`, kiun vi povas vidi. `plan` presas la kalkulon `1..2` supre, antaŭ ol iuj kontroloj ruliĝas. `done-testing` anstataŭe presas ĝin tute ĉe la fino. Ĉiukaze, kun `plan 2` la rulo atendas ekzakte du testojn. Se ruliĝas malpli aŭ pli da testoj, la testoserio estas raportita kiel malsukcesinta. Uzu `plan`, kiam la nombro de testoj estas fiksita kaj konata. Uzu `done-testing`, kiam estas pli facile lasi la testan kadron kalkuli.

{% include nav.html %}
