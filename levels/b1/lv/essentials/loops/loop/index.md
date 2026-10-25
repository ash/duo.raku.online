---
title: Trīs izteiksmju cikls
---

{% include menu.html %}

`loop` paziņojums Raku valodā ir ļoti līdzīgs tradicionālajiem cikliem C valodā un tai līdzīgās valodās. Tas pieņem trīs paziņojumus. Pirmais iestata sākuma vērtību, un otrais ir pārbaude. Trešais maina cikla mainīgo. Cikla ķermenis izpildās atkal un atkal, kamēr pārbaude ir `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Šeit `++` ir postfix operators, kas nozīmē, ka tas atrodas aiz sava argumenta. Tas pieskaita argumentam 1. Kursa otrajā daļā ir vairāk operatoru.

Programma izpilda cikla ķermeni piecas reizes.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Daži paziņojumi `loop` galvenē, vai pat visi, nav obligāti. Piemēram, šeit ir tā pati programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

Raku programmētāji `loop`, iespējams, izmanto retāk nekā jebkuru citu ciklu. To var atrast, piemēram, kodā, ko kāds rīks pārveidoja no C uz Raku. Taču Raku valodā ir ērtāki cikli, piemēram, `for`. Mēs to apskatīsim pavisam drīz.

{% include nav.html %}
