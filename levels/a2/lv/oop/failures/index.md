---
title: Mīkstās kļūmes
translations_gpt:
---

{% include menu.html %}

Izņēmums no `die` uzreiz aptur visu. Dažreiz tas ir par daudz. Varbūt apakšprogramma nevar dot rezultātu. Tai jāziņo par šo problēmu. Bet izsaucējam jāizlemj, vai programma apstājas. Izsaucējs ir kods, kas izsauca apakšprogrammu. Šim gadījumam Raku valodā ir _mīkstās neveiksmes_. Jūs tās veidojat ar `fail`.

Apakšprogramma var izsaukt `fail`. Tad tā neizmet izņēmumu uzreiz. Tā vietā tā atgriež izsaucējam īpašu `Failure` objektu. `Failure` ir vērtība ar kļūdu iekšā. Tas ir nedefinēts. Tāpēc izsaucējs var to klusi pārbaudīt:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

Pirmais izsaukums izdodas un atgriež `5`. Otrais izsaukums neizdodas. Tas atgriež `Failure`. Šim objektam `defined` dod `False`. Tāpēc izsaucējs var pārbaudīt rezultātu, pirms to izmanto.

Kāpēc `Failure` sauc par _mīkstu_? Tas kļūst par īstu, izmestu izņēmumu tikai vienā gadījumā. Tas ir tad, kad jūs to izmantojat kā vērtību bez pārbaudes. Bet jūs varat to apstrādāt, piemēram, ar `defined` pārbaudi. Tad tas paliek kluss. Tā apakšprogramma var ziņot par problēmu. Visai programmai nav jāapstājas.

## To jūs jau zināt

Šo neveiksmes veidu atliek uz vēlāku laiku. Ne tikai `fail` darbojas šādi. Agrāk šajā daļā jūs to pašu ideju redzējāt divas reizes.

**Dalīšana ar nulli** klusi izveido vērtību. Tā izmet izņēmumu tikai tad, kad jūs vērtību tiešām izmantojat:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

**Neveiksmīga ārēja programma** atgriež `Proc`. Tas izmet izņēmumu tikai vienā gadījumā. Tas ir tad, kad jūs izmetat `Proc` bez apstrādes. Paturiet `Proc` un apskatiet to. Tad tas paliek klusa vērtība:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

Katrā gadījumā problēma neaptur programmu uzreiz. Tā kļūst par vērtību. Jūs varat šo vērtību pārbaudīt. Tā pārvēršas izmestā izņēmumā tikai divos gadījumos. Jūs to izmantojat bez pārbaudes, vai arī jūs to ignorējat. Temats [Ne katra kļūda parādās uzreiz](/lv/oop/try/deferred-errors) parāda abus piemērus kopā.

{% include nav.html %}
