---
title: Ligzdotas apakšprogrammas
translations_gpt:
---

{% include menu.html %}

Jūs varat definēt apakšprogrammu _iekšpus_ citas apakšprogrammas. Tā ir ligzdota apakšprogramma. Tā ir parasta apakšprogramma. Bet jūs to varat redzēt un lietot tikai ārējās apakšprogrammas iekšpusē.

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

Šeit mēs izveidojam `inner` iekšpus `outer`. Tad `outer` to izsauc. Tas darbojas. Nosaukums `inner` ir zināms visā `outer` ķermenī.

Bet ārpus `outer` nosaukuma `inner` nav. Šī programma nekompilējas:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Dažreiz palīgrutīna vajadzīga tikai vienai apakšprogrammai. Tad ligzdošana ir noderīga. Ielieciet palīgu tajā apakšprogrammā. Tas parāda, ka palīgs ir privāts. Turklāt cits kods nevar to izsaukt pa kļūdai.

{% include nav.html %}
