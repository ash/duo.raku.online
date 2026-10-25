---
title: Interpolante haketmapojn
---

{% include menu.html %}

Vi povas interpoli elementojn de haketo en duoble-cititaj ŝnuroj. Skribu ilin tiel, kiel vi faras en la programo mem: `%data<FR>`. Por interpoli la tutan haketon, aldonu paron de malplenaj angulaj aŭ kurbaj krampoj: `%data{}`. La sekva programo montras, kiel tio funkcias:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Aŭ:
# say "%data{}";
```

Ĉi tiu programo presas la datumojn, kiujn ni petis:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Notu, ke kiam vi presas la tutan haketon, la eligo povas okupi kelkajn liniojn.

{% include nav.html %}
