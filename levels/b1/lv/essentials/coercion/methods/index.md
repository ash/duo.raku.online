---
title: Tipu konvertēšana, izmantojot tipu piespiedu metodes
---

{% include menu.html %}

Lai konvertētu jeb _piespiestu_ vērtību uz citu tipu, izsauciet metodi. Metodei ir tāds pats nosaukums kā datu tipam. Piemēram, konvertējiet virkni par veselu skaitli:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

Daudzos gadījumos jums nav pašiem jākonvertē vērtības. Raku izdara šo darbu jūsu vietā. Šis kods strādā pareizi un tā, kā jūs to gaidītu:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "Rezultāts ir $c."; # Rezultāts ir 30.
```

Mainīgie `$a` un `$b` satur virknes. Bet tie tiek izmantoti aprēķinā ar `+`. Šajā brīdī abas virknes tiek pārveidotas par veseliem skaitļiem, tāpēc arī `$c` saņem veselu skaitli. Pēdējā rindā mainīgais ar veselo skaitli tiek interpolēts virknē. Raku izdara visu vajadzīgo, lai parādītu skaitli kā ciparu rakstzīmes.

{% include nav.html %}
