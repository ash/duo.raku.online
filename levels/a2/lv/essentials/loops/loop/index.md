---
title: Trīs izteiksmju cikls
---

{% include menu.html %}

Raku valodā ir `loop` paziņojums. Tas darbojas kā cikli C valodā un līdzīgās valodās. Tam ir trīs paziņojumi. Pirmais dod cikla mainīgajam sākuma vērtību. Otrais ir pārbaude. Trešais maina cikla mainīgo. Cikls izpildās, kamēr pārbaude ir `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Šeit `++` ir operators. Jūs to rakstāt aiz mainīgā. Tas pieskaita mainīgajam 1. Kursa otrajā daļā ir vairāk operatoru.

Cikla ķermenis izpildās piecas reizes.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Jūs varat izlaist dažus no trim `loop` paziņojumiem. Jūs varat izlaist pat visus. Piemēram, šeit ir tā pati programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

Raku valodā `loop` neizmanto ļoti bieži. Dažreiz kāds rīks pārvērš C kodu Raku kodā. Šādā kodā jūs varat redzēt `loop`. Raku valodā ir vieglāki cikli, piemēram, `for`. Mēs apskatīsim `for` pavisam drīz.

{% include nav.html %}
