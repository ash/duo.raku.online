---
title: Mīkstās kļūmes
translations_gpt:
---

{% include menu.html %}

Izņēmuma izmešana ar `die` uzreiz aptur visu. Dažreiz tas ir pārāk skarbi. Varbūt jūs gribat, lai apakšprogramma paziņo, ka nevarēja dot rezultātu. Bet izsaucējam jāizlemj, vai tas ir liktenīgi. Tam Raku valodā ir _mīkstās neveiksmes_, kuras jūs veidojat ar `fail`.

Kad apakšprogramma izsauc `fail`, tā neizmet izņēmumu uzreiz. Tā vietā tā atgriež izsaucējam īpašu `Failure` objektu. `Failure` ir nedefinēts, tāpēc izsaucējs var to klusi pārbaudīt:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

Veiksmīgais izsaukums atgriež `5`. Neveiksmīgais izsaukums atgriež `Failure`, un `defined` tam dod `False`. Tāpēc izsaucējs var pārbaudīt rezultātu, pirms to izmanto.

Kāpēc `Failure` sauc par _mīkstu_? Tas kļūst par īstu, izmestu izņēmumu tikai vienā gadījumā. Tas notiek, kad jūs to izmantojat kā vērtību, iepriekš to nepārbaudot. Kamēr jūs to apstrādājat, piemēram, pārbaudot `defined`, tas paliek kluss. Tā apakšprogramma var ziņot par problēmu, neapturot visu programmu.

## To jau esat redzējuši

Šāda atlikta neveiksme nenāk tikai no `fail`. Agrāk šajā daļā jūs ar to pašu ideju jau sastapāties divreiz.

**Dalīšana ar nulli** klusi rada vērtību. Tā izmet izņēmumu tikai tad, kad jūs šo vērtību patiešām izmantojat:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

**Neveiksmīga ārēja programma** atgriež `Proc`. Tas izmet izņēmumu tikai tad, ja jūs to izmetat bez apstrādes. Ja jūs to saglabājat un apskatāt, tas paliek klusa vērtība:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

Katrā gadījumā problēma neaptur programmu tajā brīdī, kad tā notiek. Tā vietā tā kļūst par vērtību, ko jūs varat pārbaudīt. Tā kļūst par izmestu izņēmumu tikai tad, kad jūs to izmantojat bez pārbaudes vai ignorējat. Temats [Ne katra kļūda parādās uzreiz](/lv/oop/try/deferred-errors) parāda šos divus piemērus līdzās.

{% include nav.html %}
