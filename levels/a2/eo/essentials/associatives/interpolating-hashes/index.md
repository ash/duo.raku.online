---
title: Interpolante haketmapojn
---

{% include menu.html %}

Vi povas interpoli elementojn de haketo en duoble-cititaj ŝnuroj. Skribu ilin same kiel en la programkodo: `%data<FR>`. Vi ankaŭ povas interpoli la tutan haketon. Por tio, aldonu malplenajn angulajn krampojn aŭ malplenajn kurbajn krampojn: `%data{}`. Ĉi tiu programo montras, kiel tio funkcias:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Aŭ:
# say "%data{}";
```

La programo presas la datumojn, kiujn ni volas:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Notu, ke tuta haketo povas presi pli ol unu linion.

{% include nav.html %}
