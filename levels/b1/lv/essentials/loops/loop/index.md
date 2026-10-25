---
title: Trīs izteiksmju cikls
---

{% include menu.html %}

`loop` paziņojumam Raku valodā ir daudz kopīga ar tradicionālajiem cikliem C programmēšanas valodā un tās radiniekos. Tas pieņem trīs paziņojumus: inicializētāju, pārbaudi un paziņojumu, kas maina cikla mainīgo. Cikla ķermenis izpildās atkal un atkal, kamēr pārbaude paliek `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Šeit `++` ir postfix operators, kas palielina savu argumentu par 1. Kursa otrajā daļā mēs apskatīsim vairāk operatoru.

Programma izpilda cikla ķermeni piecas reizes.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Dažus vai pat visus paziņojumus `loop` galvenē var izlaist. Piemēram, šeit ir tā pati programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

`loop` cikli, iespējams, ir vismazāk izmantotie cikli Raku valodā. Tos var atrast, piemēram, kodā, ko kāds rīks automātiski pārtulkojis no C uz Raku. Taču Raku valodā ir ērtāki cikli, piemēram, `for`, ko mēs apskatīsim pavisam drīz.

{% include nav.html %}
