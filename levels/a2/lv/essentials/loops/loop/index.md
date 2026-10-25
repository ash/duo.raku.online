---
title: Trīs izteiksmju cikls
---

{% include menu.html %}

`loop` paziņojums Raku valodā ir līdzīgs klasiskajiem cikliem C valodā un līdzīgās valodās. Tas pieņem trīs paziņojumus. Pirmais iestata sākuma vērtību. Otrais ir pārbaude. Trešais maina cikla mainīgo. Cikla ķermenis izpildās atkal un atkal, kamēr pārbaude ir `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Šeit `++` ir operators aiz mainīgā. Tas pieskaita mainīgajam 1. Vairāk operatoru jūs uzzināsiet kursa otrajā daļā.

Programma izpilda cikla ķermeni piecas reizes.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Jūs varat izlaist dažus vai pat visus paziņojumus `loop` galvenē. Piemēram, šeit ir tā pati programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

Raku valodā `loop` neizmanto ļoti bieži. Jūs to varat redzēt, piemēram, programmās, ko kāds rīks pārtulkoja no C uz Raku. Raku valodā ir vieglāki cikli, piemēram, `for`. Pavisam drīz mēs apskatīsim `for`.

{% include nav.html %}
