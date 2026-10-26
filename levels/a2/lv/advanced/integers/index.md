---
title: Veseli skaitļi
translations_gpt:
---

{% include menu.html %}

Jūs lietojat veselos skaitļus jau no paša kursa sākuma. Veselie skaitļi ir skaitļi bez daļām. Šī sadaļa parāda dažas to īpašības. Sākumā jūs šīs īpašības varbūt nepamanāt.

Svarīgākā īpašība ir _patvaļīga precizitāte_. Raku veselajam skaitlim nav fiksēta baitu skaita. Tāpēc tas nekad nepārplūst. Pārplūšanā skaitlis kļūst pārāk liels. Tad tas klusi kļūst nepareizs. Ar pietiekamu atmiņu vesels skaitlis var būt tik liels, cik jums vajag:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Šī vērtība ir precīza. Tā nav noapaļota. Tas pats notiek, kad jūs reizināt lielus skaitļus. Piemēram, Raku atrod precīzu 50 faktoriālu:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Garus skaitļus kodā ir grūti lasīt. Tāpēc jūs varat sadalīt ciparus grupās ar pasvītrām. Kompilators pasvītras izlaiž:

```raku
say 1_000_000; # 1000000
```

Nākamās tēmas parāda, kā rakstīt veselos skaitļus citās bāzēs. Bāze 10 nav vienīgā. Tās arī parāda dažas noderīgas metodes veselajiem skaitļiem.

{% include nav.html %}
