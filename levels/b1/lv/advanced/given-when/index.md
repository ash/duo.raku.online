---
title: '`given` un `when`'
translations_gpt:
---

{% include menu.html %}

Dažreiz programmai jāizvēlas starp vairākām iespējām. Tad `if` un `elsif` pārbaužu ķēde var kļūt gara un pilna ar atkārtojumiem. Šādos gadījumos `given`/`when` bieži ir skaidrāks. Tas ir līdzīgs `switch` priekšrakstam citās valodās.

`given` bloks paņem vērtību un padara to par _tēmu_. Tēma ir īpašais mainīgais `$_`. Tad katrs `when` bloks tiek salīdzināts ar šo tēmu. Pirmais, kas atbilst, tiek izpildīts:

```raku
my $n = 2;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    when 3 { say 'three' }
}
```

Šī programma izdrukā:

```
two
```

Atšķirībā no `switch` dažās valodās, šeit nav "caurkritšanas" (fall-through) uz nākamo gadījumu. Tiklīdz `when` atbilst, tā bloks izpildās, un `given` bloks ir pabeigts. Pārējie `when` bloki netiek pārbaudīti.

## `default` bloks

`default` bloks izpildās, ja neviens no `when` blokiem neatbilda. Tas dara to pašu darbu, ko `else` atzars `if` priekšrakstā:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` nav ne `1`, ne `2`, tāpēc programma izdrukā:

```
many
```

{% include nav.html %}
