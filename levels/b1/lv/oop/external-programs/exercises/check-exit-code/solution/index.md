---
title: 'Risinājums: Pārbaudiet izejas kodu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `run` atgriež `Proc`. Šeit ir svarīgi to saglabāt mainīgajā `$proc` un pēc tam nolasīt. Ja jūs neveiksmīgas komandas `Proc` vienkārši izmetat, tas izmet izņēmumu. Bet rezultāta apskatīšana skaitās tā apstrāde.

1. `.exitcode` ir skaitlis, ko komanda atgrieza: `4`. Ja pārbaudāt `Proc` kā Būla vērtību, tas atbild uz vienkāršāku jautājumu: vai izdevās? Tas ir patiess tikai tad, kad izejas kods ir `0`. Šeit tas ir aplams, tāpēc programma izdrukā `failure`.

{% include nav.html %}
