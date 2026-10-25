---
title: 'Enigo per `prompt`'
---

{% include menu.html %}

`prompt` estas la malo de `say`. Ĝi atendas la uzanton. La uzanto tajpas ion kaj premas Enter. Poste `prompt` sendas la enigon al la programo kiel ĉenon. Vi povas preni la rezulton de `prompt` kaj doni ĝin al `say`. Tiam la programo ripetas tion, kion la uzanto tajpas. Ni skribu tian programon:

```raku
say prompt;
```

Rulu ĉi tiun programon. Eble vi ne komprenas, kio okazas. La programo nur atendas iun enigon. Do estas bone unue presi mesaĝon. Tiam la programo estas pli facila por uzi. Vi ne bezonas apartan `say` por tio. Vi povas doni la mesaĝon al `prompt`:

```raku
prompt 'Kiun lingvon vi intencas lerni? '
```

Ĉi tiu sekcio baldaŭ finiĝas. Sed unue, ni kunmetu ĉiujn partojn. La nova programo demandas, kion la uzanto volas. Poste ĝi presas frazon kun la teksto de la uzanto.

```raku
say 'Vi intencas lerni ', prompt 'Kiun lingvon vi intencas lerni? ';
```

Se vi enigas `Raku`, la programo presas ĉi tiun frazon:

    Vi intencas lerni Raku

Bone, nun ni povas paroli al la programo. Kaj ni povas igi la programon paroli al ni!

Notu, ke `say` devas koni la ĉenojn antaŭ ol presi ilin. Do Raku unue rulas `prompt`. Tiel la dialogo iras en la ĝusta ordo:

```console
$ raku t.raku 
Kiun lingvon vi intencas lerni? Raku
Vi intencas lerni Raku
```

{% include nav.html %}
