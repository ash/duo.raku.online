---
title: 'Ievade ar `prompt`'
---

{% include menu.html %}

Pretstats `say` ir `prompt`. Tas gaida, līdz lietotājs kaut ko ievada un nospiež Enter. Pēc tam tas nosūta ievadi programmai kā virkni. Jūs varat ņemt `prompt` rezultātu un nodot to `say`. Tad programma izdrukā atpakaļ to, ko lietotājs ievada. Uzrakstīsim šādu programmu:

```raku
say prompt;
```

Ja palaidīsiet šo programmu, tā jūs var samulsināt. Programma tikai gaida kādu ievadi. Tāpēc ir labi izdrukāt lietotājam uzvednes ziņojumu. Tas padara programmu lietotājam draudzīgāku. Tam jums nav vajadzīgs atsevišķs `say`. Vienkārši nododiet ziņojumu `prompt`:

```raku
prompt 'Kādu valodu jūs plānojat mācīties? '
```

Pirms noslēdzam šo sadaļu, saliksim visas daļas kopā. Mēs izveidosim programmu, kas jautā, ko lietotājs vēlas. Tad tā izdrukā frāzi ar tekstu, ko lietotājs ievadīja.

```raku
say 'Jūs plānojat mācīties ', prompt 'Kādu valodu jūs plānojat mācīties? ';
```

Ja jūs ievadījāt `Raku`, programma izdrukā šādu frāzi:

    Jūs plānojat mācīties Raku

Labi, tagad mēs varam sarunāties ar programmu. Un mēs varam likt tai sarunāties ar mums!

Ņemiet vērā, ka `say` ir jāzina virknes, pirms tas tās izdrukā. Tāpēc Raku vispirms izpilda `prompt`. Tādējādi dialogs notiek pareizā secībā:

```console
$ raku t.raku 
Kādu valodu jūs plānojat mācīties? Raku
Jūs plānojat mācīties Raku
```

{% include nav.html %}
