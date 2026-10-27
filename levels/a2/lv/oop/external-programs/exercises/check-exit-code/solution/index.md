---
title: 'Risinājums: Pārbaudiet izejas kodu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Atrodiet programmu failā [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Izvade

```
4
failure
```

## Komentāri

1. `run` atgriež `Proc`. Mēs to paturam mainīgajā `$proc` un tad to nolasām. Šeit tas ir svarīgi. Komanda var neizdoties. Ja neviens nepatur tās `Proc`, Raku izmet izņēmumu. Izņēmums ir kļūda, kas aptur programmu. Bet šeit mēs skatāmies uz rezultātu. Tas skaitās kā neveiksmes apstrāde.

1. `.exitcode` dod skaitli, ko komanda atgrieza. Šeit tas ir `4`. Jūs varat arī pārbaudīt `Proc` kā Būla vērtību. Būla vērtība ir patiesa vai aplama. Tas atbild uz vienkāršāku jautājumu: vai komanda izdevās? `Proc` ir patiess tikai tad, kad izejas kods ir `0`. Šeit tas ir aplams. Tāpēc programma izdrukā `failure`.

{% include nav.html %}
