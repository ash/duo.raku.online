---
title: Ligzdotas apakšprogrammas
translations_gpt:
---

{% include menu.html %}

Apakšprogrammu var definēt _iekšpus_ citas apakšprogrammas. Šāda ligzdota apakšprogramma ir parasta apakšprogramma. Bet tā ir redzama tikai tās apakšprogrammas iekšpusē, kas to satur.

```raku
sub outer {
    sub inner {
        say 'I am the inner subroutine';
    }

    inner;
}

outer;
```

Programma izdrukā:

```
I am the inner subroutine
```

Šeit `inner` ir deklarēta iekšpus `outer`, un `outer` to izsauc. Tas darbojas, jo `inner` var lietot jebkurā `outer` ķermeņa vietā.

Bet ārpus `outer` nav nosaukuma `inner`. Tāpēc nākamā programma nekompilējas:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Ligzdošana noder, kad palīgrutīna vajadzīga tikai vienai apakšprogrammai. Ja jūs turat palīgu iekšpusē, ir skaidrs, ka tā ir privāta detaļa. Turklāt neviens nevar to pa kļūdai izsaukt no citas vietas.

{% include nav.html %}
