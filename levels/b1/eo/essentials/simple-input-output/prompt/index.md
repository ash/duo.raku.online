---
title: 'Enigo per `prompt`'
---

{% include menu.html %}

La malo de `say` estas `prompt`. Ĝi atendas, ĝis la uzanto tajpas ion kaj premas Enter. Poste ĝi sendas la enigon al la programo kiel ĉenon. Vi povas preni la rezulton de `prompt` kaj transdoni ĝin al `say`. Tiam la programo presas reen tion, kion la uzanto tajpas. Ni skribu tian programon:

```raku
say prompt;
```

Se vi rulas ĉi tiun programon, ĝi eble konfuzos vin. La programo nur atendas iun enigon. Do estas bone presi promptan mesaĝon por la uzanto. Tio faras la programon pli oportuna por la uzanto. Vi ne bezonas apartan `say` por tio. Simple transdonu la mesaĝon al `prompt`:

```raku
prompt 'Kiun lingvon vi intencas lerni? '
```

Antaŭ ol ni finos ĉi tiun sekcion, ni kunmetu ĉiujn partojn. Ni kreos programon, kiu demandas, kion la uzanto volas. Poste ĝi presas frazon kun la teksto, kiun la uzanto enigis.

```raku
say 'Vi intencas lerni ', prompt 'Kiun lingvon vi intencas lerni? ';
```

Se vi enigis `Raku`, la programo presas la jenan frazon:

    Vi intencas lerni Raku

Bone, ni povas paroli al la programo nun. Kaj ni povas igi ĝin paroli al ni!

Notu, ke `say` bezonas koni la ĉenojn antaŭ ol presi ilin. Do Raku unue rulas `prompt`. Tio tenas la dialogon en la ĝusta ordo:

```console
$ raku t.raku 
Kiun lingvon vi intencas lerni? Raku
Vi intencas lerni Raku
```

{% include nav.html %}
