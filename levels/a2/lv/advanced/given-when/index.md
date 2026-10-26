---
title: '`given` un `when`'
translations_gpt:
---

{% include menu.html %}

Dažreiz programmai jāizvēlas starp vairākām iespējām. `if` un `elsif` pārbaužu ķēde var kļūt gara. Tā arī atkārto vienu un to pašu. Šādā gadījumā `given`/`when` bieži ir skaidrāks. Tas ir līdzīgs `switch` priekšrakstam citās valodās.

`given` bloks paņem vērtību. Tas padara šo vērtību par _tēmu_. Tēma ir īpašais mainīgais `$_`. Tad Raku salīdzina katru `when` bloku ar tēmu. Pirmais `when`, kas atbilst, izpildās:

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

Dažās citās valodās ir `switch` priekšraksts. Pēc atbilstības tas var turpināt ar nākamo gadījumu. Raku tā nedara. Kad `when` atbilst, tā bloks izpildās. Tad `given` bloks beidzas. Raku nepārbauda pārējos `when` blokus.

## `default` bloks

`default` bloks izpildās, kad neviens `when` bloks neatbilst. Tas darbojas kā `if` priekšraksta `else` daļa:

```raku
my $n = 5;

given $n {
    when 1 { say 'one' }
    when 2 { say 'two' }
    default { say 'many' }
}
```

`$n` nav `1` un nav `2`. Tāpēc programma izdrukā:

```
many
```

{% include nav.html %}
