---
title: Izsaukšana ar kolu 🆕
translations_gpt:
---

{% include menu.html %}

Parasti metodes vai apakšprogrammas argumenti ir iekavās: `@a.grep(* > 5)`. Raku valodā ir otrs veids. Aiz nosaukuma lieciet **kolu**. Viss aiz kola kļūst par argumentu sarakstu. Iekavas nemaz nav vajadzīgas:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

Kols `grep:` dara to pašu darbu, ko iekavas. `(1..10).grep: * %% 2` nozīmē tieši to pašu, ko `(1..10).grep(* %% 2)`. Jūs varat lietot jebkuru no abām formām:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

Kola forma ir visērtākā ar dažām metodēm. Tās ņem **bloku** vai [Whatever](/lv/advanced/whatever) izteiksmi. Kols noņem vienu iekavu līmeni. Salīdziniet:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentheses around the block
say @a.sort: { $^b <=> $^a }; # colon — no closing paren to match
```

Abas rindas izdrukā `(3 2 1)`. Bet versiju ar kolu ir vieglāk lasīt. Ar garu bloku tas ir vēl vairāk jūtams.

Jūs jau zināt izsaukumus bez iekavām. Jūs tos lietojat ar saraksta operatoriem, piemēram, `say 1, 2, 3`. Tur `say` ņem visu aiz sevis kā savus argumentus. Kola forma ir tā pati ideja metodēm. Atcerieties vienu likumu. Kola forma ņem **atlikušo instrukcijas daļu** kā argumentus. Tāpēc tai jābūt izsaukumu ķēdes **beigās**. Tieši tāpēc `('a' .. 'z')».uc».ord.grep: 60 < * < 70` darbojas. `grep` ir pēdējais izsaukums. Ķēdē aiz tā nekā nav. Vai jums vajag izsaukt vēl metodes? Tad lietojiet formu ar iekavām. Vai arī sagrupējiet visas izteiksmes daļas ar iekavām. Tā kods kļūst skaidrs:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Uzmanieties ar vienu lietu. Nelietojiet kolu **un** iekavas kopā, kā `.grep:( … )`. Raku valodā `:( … )` nozīmē ko citu. Tas ir paraksts, kas uzrakstīts kā vērtība. Tāpēc Raku nevar nolasīt šo kodu. Lietojiet vai nu `.grep( … )`, vai `.grep: …`. Lietojiet vienu no tiem, ne abus.

{% include nav.html %}
