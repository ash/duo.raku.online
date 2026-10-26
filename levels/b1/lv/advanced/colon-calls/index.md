---
title: Izsaukšana ar kolu 🆕
translations_gpt:
---

{% include menu.html %}

Kad jūs izsaucat metodi vai apakšprogrammu, tās argumentus parasti liekat iekavās: `@a.grep(* > 5)`. Raku valodā ir arī otra forma. Aiz nosaukuma jūs liekat **kolu**. Tad viss, kas seko aiz tā, kļūst par argumentu sarakstu. Iekavas nemaz nav vajadzīgas:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

Kols `grep:` dara to pašu darbu, ko iekavas. Tātad `(1..10).grep: * %% 2` nozīmē tieši `(1..10).grep(* %% 2)`. Vienu formu vienmēr var lietot otras vietā:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

Kola forma ir visērtākā ar metodēm, kas ņem **bloku** vai [Whatever](/lv/advanced/whatever) izteiksmi. Tas ir tāpēc, ka tā noņem vienu iekavu līmeni iekavās. Salīdziniet:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentheses around the block
say @a.sort: { $^b <=> $^a }; # colon — no closing paren to match
```

Abas rindas izdrukā `(3 2 1)`, bet versiju ar kolu ir vieglāk lasīt. Tas ir īpaši jūtams, kad bloks ir garš.

Izsaukumus bez iekavām jūs jau lietojat ar saraksta operatoriem, piemēram, `say 1, 2, 3`. Tur `say` ņem visu, kas seko aiz tā, kā savus argumentus. Kola forma ir tas pats metožu izsaukumiem. Ir viens likums, kas jāatceras. Kola forma kā savus argumentus ņem **atlikušo instrukcijas daļu**. Tāpēc tai jābūt izsaukumu ķēdes **beigās**. Tieši tāpēc `('a' .. 'z')».uc».ord.grep: 60 < * < 70` darbojas. Šeit `grep` ir pēdējais izsaukums, un ķēdē aiz tā nekā nav. Ja jums jāizsauc vēl metodes, tā vietā lietojiet formu ar iekavām. Vai arī sagrupējiet visas izteiksmes daļas, lai būtu skaidrs:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Ir viena lieta, ar ko jāuzmanās. Nelietojiet kolu **un** iekavas kopā, kā `.grep:( … )`. Tas saduras ar `:( … )`, kas ir paraksta literāļa sintakse. Tāpēc Raku nevar nolasīt kodu. Lietojiet vai nu `.grep( … )`, vai `.grep: …`. Lietojiet vienu vai otru, ne abus.

{% include nav.html %}
