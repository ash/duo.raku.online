---
title: '`if` bloki'
---

{% include menu.html %}

`if` nosacījuma pārbaude aplūko nosacījumu. Kad nosacījums ir `True`, izpildās koda bloks.

```raku
if 10 > 4 {
    say 'Matemātika darbojas!';
}
```

Ievērojiet, ka nosacījums nav jāliek iekavās. Bet jūs varat to darīt, ja vēlaties.

Protams, pārbaudēs jūs varat brīvi izmantot mainīgos:

```raku
my $flag = False;
if $flag {
    # . . . dari kaut ko
}
```

Ja vairākas pārbaudes izmanto to pašu mainīgo, salīdzinājumus var likt ķēdē:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Pareizā atbilde $x ir dota.";
}
```

Ja nosacījums nav izpildīts, tā koda bloks neizpildās. Pēc tam programma turpina darbu kā parasti.

```raku
say 'Sākums';
if False {
    say 'Šis nekad netiek izdrukāts.';
}
say 'Beigas';
```

Šī programma vienkārši izdrukā `Sākums` un `Beigas`.

{% include nav.html %}
