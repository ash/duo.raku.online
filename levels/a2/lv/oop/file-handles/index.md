---
title: Failu deskriptori
translations_gpt:
---

{% include menu.html %}

Visu failu ir viegli nolasīt vai ierakstīt uzreiz. Bet dažreiz jūs gribat iet cauri failam pa rindai. Vai arī jūs gribat rakstīt failā daudz reižu. Visu šo laiku failam jāpaliek atvērtam. Tam jūs lietojat _faila turi_. Faila turis ir objekts atvērtam failam. Caur to jūs lasāt no faila vai rakstāt tajā.

Šeit ir vieglākais veids, kā lasīt failu pa rindai. Jums pat nav pašiem jāizveido turis. Izsauciet metodi `lines` uz ceļa objekta. Tā dod jums rindas pa vienai. Tās ir gatavas ciklam `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Katrs `$line` ir viena rinda. Tās beigās nav jaunas rindas rakstzīmes. Programma izdrukā:

```
ONE
TWO
THREE
```

Caur turi jūs varat arī rakstīt failā. Vispirms atveriet failu ar `open` un karodziņu `:w`. Šis karodziņš nozīmē rakstīšanu. Tad lietojiet tura metodes `say` vai `print`. Beigās aizveriet to ar `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Beigās aizveriet turi. Tad visi jūsu dati tiešām nonāk diskā. Daži faili ir par lielu atmiņai. Jūs nevarat tos nolasīt visus uzreiz. Tādus failus jūs parasti lasāt pa rindai, kā augstāk.

{% include nav.html %}
