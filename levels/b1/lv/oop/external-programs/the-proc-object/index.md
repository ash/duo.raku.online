---
title: Proc objekts
translations_gpt:
---

{% include menu.html %}

Katrs `run` vai `shell` izsaukums atgriež `Proc` objektu. Tas ir neliels pieraksts, kas apraksta, kura programma darbojās un kā tā beidza darbu. Iepriekšējie temati lietoja tā turi `.out`, lai nolasītu izvadi. Bet `Proc` satur vairāk nekā tikai to.

Visnoderīgākā daļa ir **izejas kods**. Ar nelielu veselu skaitli programma pasaka tam, kas to palaida, vai tā izdevās. `0` nozīmē veiksmi. Jebkurš cits skaitlis ir neveiksmes kods, ko programma izvēlas pati. `.exitcode` jums dod šo skaitli:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Parasti jūs uzdodat tikai jautājumu ar atbildi jā vai nē: vai tas izdevās? Tādam jautājumam `Proc` vienkārši ir patiess, kad izejas kods ir `0`. Citādi tas ir aplams. Tāpēc to var pārbaudīt tieši:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

`Proc` laukā `.command` arī atceras, kuru komandu tas palaida:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Ir viena lieta, no kuras jāuzmanās. Ja komanda neizdodas un jūs atgriezto `Proc` vienkārši **ignorējat**, Raku izmet izņēmumu. Raku neļauj neveiksmei paiet nepamanītai:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Izejas kods, kas nav nulle, parasti nozīmē, ka kaut kas nogāja greizi. Tāpēc, ja jūs izmetat neveiksmīgu `Proc`, tas izmet izņēmumu. Tas notiek, kad `Proc` iziet no redzamības apgabala. Cēlonis ir rezultāta *izmešana*, nevis izejas koda ignorēšana. Pietiek tikai saglabāt `Proc` mainīgajā, lai izvairītos no izņēmuma. Jums pat nav uz to vēlreiz jāskatās.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

Tātad, ja jūs *gaidāt*, ka komanda varētu neizdoties, paturiet tās `Proc`. Tad ieskatieties `.exitcode` vai pārbaudiet to kā Būla vērtību. Dariet to, kad vien gribat zināt, kas notika.

{% include nav.html %}
