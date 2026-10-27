---
title: Failu deskriptori
translations_gpt:
---

{% include menu.html %}

Nolasīt vai ierakstīt visu failu uzreiz ir viegli. Bet dažreiz jūs gribat iet cauri failam pa vienai rindai. Vai arī jūs varbūt gribat turēt failu atvērtu un rakstīt tajā daudz reižu. Tam jūs izmantojat _faila turi_.

Šeit ir vienkāršākais veids, kā lasīt failu pa rindai. Tam jums pat nav jāizveido turis. Ceļa objekta metode `lines` dod jums rindas pa vienai. Tās ir gatavas ciklam `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Katrs `$line` ir viena rinda bez jaunas rindas rakstzīmes beigās. Programma izdrukā:

```
ONE
TWO
THREE
```

Lai rakstītu caur turi, atveriet failu ar `open` un karodziņu `:w` (rakstīšanai). Tad izmantojiet tura metodes `say` vai `print`. Kad esat pabeiguši, aizveriet to ar `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Kad jūs aizverat turi, viss, ko jūs ierakstījāt, tiešām tiek saglabāts diskā. Daži faili ir par lielu, lai tos ielādētu atmiņā visus uzreiz. Tādus failus jūs parasti lasāt pa rindai, kā augstāk.

{% include nav.html %}
