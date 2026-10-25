---
title: '`@*ARGS` masīvs'
---

{% include menu.html %}

Tagad jūs zināt par masīviem. Tāpēc iepazīsimies ar iebūvētu masīvu `@*ARGS`. Paskatieties uz `*` tā nosaukumā. Tas ir otrais sigils jeb _twigil_. Vairāk twigilu mēs redzēsim vēlāk. Bet pagaidām apskatīsim, kā šis īpašais masīvs noder. Tas glabā programmas argumentus. Programma tos saņem no komandrindas.

Paskatieties uz šo programmas palaišanu:

```console
$ raku run.raku alpha beta
```

Programma `run.raku` saņem divus parametrus: `alpha` un `beta`. Jūs varat tos nolasīt no `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Šī programma izdrukā savu argumentu skaitu. Tad tā izdrukā argumentus:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Jūs varat palaist programmu arī kā izpildāmu failu. Jums tam nav jāmaina programma:

```console
$ ./run.raku alpha beta
```

Šajā gadījumā programmai [ir vajadzīgs shebang](/lv/essentials/running-programs/from-command-line). Bet vissvarīgākais ir šis. `@*ARGS` indeksi joprojām sākas ar `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
