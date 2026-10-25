---
title: '`if` bloki'
---

{% include menu.html %}

`if` ir nosacījuma pārbaude. Tā pārbauda nosacījumu. Ja nosacījums ir `True`, `if` izpilda koda bloku.

```raku
if 10 > 4 {
    say 'Matemātika darbojas!';
}
```

Jums nav jāliek nosacījums apaļajās iekavās. Bet jūs varat, ja gribat.

Protams, pārbaudēs jūs varat izmantot mainīgos:

```raku
my $flag = False;
if $flag {
    # . . . dari kaut ko
}
```

Dažreiz divas vai vairāk pārbaudes izmanto vienu un to pašu mainīgo. Tad jūs varat rakstīt salīdzinājumus kā ķēdi:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Pareizā atbilde $x ir dota.";
}
```

Dažreiz nosacījums ir `False`. Tad Raku neizpilda koda bloku. Programma vienkārši turpina darbu.

```raku
say 'Sākums';
if False {
    say 'Šis nekad netiek izdrukāts.';
}
say 'Beigas';
```

Šī programma izdrukā tikai `Sākums` un `Beigas`.

{% include nav.html %}
