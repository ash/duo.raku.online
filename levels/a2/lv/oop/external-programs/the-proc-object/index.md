---
title: Proc objekts
translations_gpt:
---

{% include menu.html %}

Katrs `run` vai `shell` izsaukums atdod `Proc` objektu. Tas ir neliels pieraksts par programmu. Tas jums pasaka, kura programma darbojās un kā tā beidza darbu. Iepriekšējos tematos mēs lietojām tā turi `.out`, lai nolasītu izvadi. Bet `Proc` satur vairāk nekā tikai to.

Visnoderīgākā daļa ir **izejas kods**. Tas ir neliels vesels skaitlis. Programma to atdod tam, kas to palaida. Ar šo skaitli programma pasaka, vai tā izdevās. `0` nozīmē veiksmi. Jebkurš cits skaitlis nozīmē neveiksmi. Programma pati izvēlas šo neveiksmes kodu. `.exitcode` jums dod šo skaitli:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Bieži jūs uzdodat tikai jautājumu ar atbildi jā vai nē. Vai tas izdevās? Tādam jautājumam `Proc` ir patiess, kad izejas kods ir `0`. Citādi tas ir aplams. Tāpēc jūs varat pārbaudīt `Proc` tieši:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

`Proc` arī atceras komandu, ko tas palaida. Jūs to atrodat laukā `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Uzmanieties ar vienu lietu. Dažreiz komanda neizdodas. Un ja jūs vienkārši **ignorējat** `Proc`, ko tā atgriež? Tad Raku izmet izņēmumu. Izņēmums ir kļūda, kas aptur programmu. Raku neļauj neveiksmei palikt slēptai:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Izejas kods, kas nav `0`, parasti nozīmē problēmu. Tāpēc neveiksmīgs `Proc` izmet izņēmumu, ja jūs to izmetat. Tas notiek, kad `Proc` iziet no redzamības apgabala. Tad neviens kods to vairs nevar sasniegt. Te nav runa par izejas koda pārbaudi. Runa ir par rezultāta *izmešanu*. Vienkārši ielieciet `Proc` mainīgajā. Ar to pietiek, un izņēmuma nebūs. Jums pat nav vēlreiz jāskatās uz mainīgo.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

Tātad vai jūs *gaidāt*, ka komanda var neizdoties? Tad paturiet tās `Proc`. Kad gribat zināt, kas notika, ieskatieties `.exitcode`. Vai arī pārbaudiet `Proc` kā Būla vērtību.

{% include nav.html %}
