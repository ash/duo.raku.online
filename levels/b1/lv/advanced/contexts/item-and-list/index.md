---
title: Vienuma un saraksta konteksts
---

{% include menu.html %}

Vēl divi konteksti nosaka, vai kaut kas ir **saraksts** vai viens **elements**. Sarakstam ir vairākas vērtības. Sigili `@` un `$` balstās uz šo atšķirību.

_Saraksta kontekstā_ masīvs izklājas savos elementos. Cikls `for` ievieto savu argumentu saraksta kontekstā, tāpēc tas iet cauri katram elementam:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

_Elementa kontekstā_ tas pats masīvs darbojas kā viena vērtība. Kontekstualizators `$( … )` uzliek elementa kontekstu. Tāpēc tagad cikls redz tikai vienu lietu un izpildās vienu reizi:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Tas izskaidro, kas notiek, kad jūs piešķirat masīvu skalāram. Masīvs tiek iepakots vienā elementā, un tā elementi netiek kopēti. Iemesls ir tāds, ka `my $x = @a` ievieto `@a` elementa kontekstā. Ņemiet vērā, ka šis viens elements var būt cits konteineris ar daudziem elementiem:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

Mainīgais `$var` ir skalārs konteineris, tāpēc tagad tas satur vienu objektu. Šis objekts ir `Array`. To var viegli pierādīt. Izmantojiet `$var` kā sava veida masīva atsauci, kā to sauktu citās valodās:

```raku
say $var[1]; # 2
```

Tā pāris, kontekstualizators `@( … )`, dara pretējo un uzliek saraksta kontekstu.

Ir arī _izlietnes konteksts_ (sink context). Tas ir konteksts izteikumam, kura vērtība tiek izmesta. Piemēram, rinda var būt tikai sava blakusefekta dēļ. Dažreiz vērtība izlietnes kontekstā nedara neko noderīgu. Tad Raku var brīdināt par "bezjēdzīgu lietojumu" (useless use). Tas ir noderīgs padoms, ka jūs aizmirsāt izmantot rezultātu.

Kad jūs izvēlaties sigilu, `$` vai `@`, jūs patiesībā izvēlaties kontekstu. Kur vajag, kontekstualizatori `$( )` un `@( )` ļauj to mainīt.

{% include nav.html %}
