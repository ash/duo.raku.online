---
title: 'Ievade ar `prompt`'
---

{% include menu.html %}

`prompt` ir `say` pretstats. Tas gaida lietotāju. Lietotājs kaut ko ievada un nospiež Enter. Tad `prompt` nosūta ievadi programmai kā virkni. Jūs varat ņemt `prompt` rezultātu un dot to `say`. Tad programma atkārto to, ko lietotājs ievada. Uzrakstīsim šādu programmu:

```raku
say prompt;
```

Palaidiet šo programmu. Varbūt jūs nesaprotat, kas notiek. Programma tikai gaida kādu ievadi. Tāpēc vispirms ir labi izdrukāt ziņojumu. Tad programmu ir vieglāk lietot. Tam jums nevajag atsevišķu `say`. Jūs varat dot ziņojumu `prompt`:

```raku
prompt 'Kādu valodu jūs plānojat mācīties? '
```

Šī sadaļa drīz beigsies. Bet vispirms saliksim visas daļas kopā. Jaunā programma jautā, ko lietotājs vēlas. Tad tā izdrukā frāzi ar lietotāja tekstu.

```raku
say 'Jūs plānojat mācīties ', prompt 'Kādu valodu jūs plānojat mācīties? ';
```

Ja jūs ievadāt `Raku`, programma izdrukā šo frāzi:

    Jūs plānojat mācīties Raku

Labi, tagad mēs varam runāt ar programmu. Un mēs varam likt programmai runāt ar mums!

Ņemiet vērā: `say` jāzina virknes, pirms tas tās izdrukā. Tāpēc Raku vispirms izpilda `prompt`. Tā dialogs notiek pareizā secībā:

```console
$ raku t.raku 
Kādu valodu jūs plānojat mācīties? Raku
Jūs plānojat mācīties Raku
```

{% include nav.html %}
