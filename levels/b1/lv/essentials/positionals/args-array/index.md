---
title: '`@*ARGS` masīvs'
---

{% include menu.html %}

Tagad, kad jūs zināt masīvus, iepazīsimies ar vienu no iebūvētajiem masīviem: `@*ARGS`. `*` tā nosaukumā ir otrais sigils jeb _twigil_. Vairāk tādu mēs redzēsim vēlāk. Bet pagaidām apskatīsim, kāpēc šis īpašais masīvs ir noderīgs. Tas satur argumentus, ko programma saņem no komandrindas.

Apskatiet šādu programmas palaišanu:

```console
$ raku run.raku alpha beta
```

Programma `run.raku` saņem divus parametrus, `alpha` un `beta`. Programmā jūs varat tos nolasīt no `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

Šī programma izdrukā, cik argumentu tā saņēma, un pēc tam pašus argumentus:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Ievērojiet, ka programma nav jāmaina, ja jūs to palaižat kā izpildāmu failu:

```console
$ ./run.raku alpha beta
```

Šajā gadījumā programmai [vajadzētu būt shebang](/lv/essentials/running-programs/from-command-line). Bet vissvarīgākais ir tas, ka `@*ARGS` indeksi joprojām sākas ar `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
