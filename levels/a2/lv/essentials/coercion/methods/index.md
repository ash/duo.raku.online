---
title: Tipu konvertēšana, izmantojot tipu piespiedu metodes
---

{% include menu.html %}

Jūs varat konvertēt vērtību uz citu tipu. Tam ir arī cits vārds: _piespiest_. Lai to izdarītu, izsauciet metodi. Tās nosaukums ir datu tipa nosaukums. Piemēram, konvertējiet virkni par veselu skaitli:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

Bieži jums nav pašiem jākonvertē vērtības. Raku to izdara jūsu vietā. Šis kods strādā pareizi un kā gaidīts:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "Rezultāts ir $c."; # Rezultāts ir 30.
```

Abi mainīgie, `$a` un `$b`, satur virknes. Bet izteiksme tās saskaita ar `+`. Tāpēc šeit Raku pārveido abas virknes par veseliem skaitļiem. Tad arī `$c` saņem veselu skaitli. Pēdējā rindā Raku interpolē šo mainīgo virknē. Lai to izdarītu, Raku pārvērš skaitli ciparu rakstzīmēs.

{% include nav.html %}
