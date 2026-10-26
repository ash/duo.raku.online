---
title: Vienuma un saraksta konteksts
---

{% include menu.html %}

Ir vēl divi konteksti. Tie nosaka vienu lietu. Vai vērtība ir **saraksts** ar vairākām vērtībām? Vai arī tā ir viens **elements**? Sigili `@` un `$` parāda šo atšķirību.

_Saraksta kontekstā_ masīvs kļūst par atsevišķiem elementiem. Cikls `for` ievieto savu argumentu saraksta kontekstā. Tāpēc cikls iet cauri katram elementam:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

_Elementa kontekstā_ tas pats masīvs ir viena vērtība. Kontekstualizators `$( … )` uzliek elementa kontekstu. Tagad cikls redz tikai vienu lietu. Tāpēc tas izpildās vienu reizi:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Elementa konteksts izskaidro arī šo. Jūs piešķirat masīvu skalāram. Skalārs saņem visu masīvu kā vienu elementu. Tas nekopē elementus. Iemesls ir tāds, ka `my $x = @a` ievieto `@a` elementa kontekstā. Ņemiet vērā, ka šis viens elements var būt cits konteineris. Un šajā konteinerā var būt daudz elementu:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

`$var` ir skalārs konteineris. Tāpēc tagad tas glabā vienu objektu. Šis objekts ir `Array`. To var viegli pārbaudīt. Izmantojiet `$var` kā sava veida masīva atsauci. Tā to sauc citās valodās:

```raku
say $var[1]; # 2
```

Kontekstualizators `@( … )` dara pretējo. Tas uzliek saraksta kontekstu.

Ir arī _izlietnes konteksts_ (sink context). Izlietnes kontekstā neviens neizmanto izteikuma vērtību. Raku vienkārši izmet šo vērtību. Piemēram, rinda var būt tikai sava blakusefekta dēļ. Blakusefekts ir koda papildu darbība, piemēram, drukāšana. Dažreiz vērtība izlietnes kontekstā nedara neko noderīgu. Tad Raku var jūs brīdināt par "bezjēdzīgu lietojumu" (useless use). Tas ir noderīgs padoms. Jūs droši vien aizmirsāt izmantot rezultātu.

Sigils, `$` vai `@`, patiesībā ir konteksta izvēle. Dažreiz jums vajag citu kontekstu. Tad kontekstualizatori `$( )` un `@( )` to maina.

{% include nav.html %}
