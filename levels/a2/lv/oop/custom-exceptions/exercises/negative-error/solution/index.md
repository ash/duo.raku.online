---
title: 'Risinājums: Negatīva skaitļa kļūda'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Negative is Exception {
    has $.n;

    method message {
        "$.n is negative";
    }
}

sub check($n) {
    Negative.new(n => $n).throw if $n < 0;
    return $n;
}

{
    say check(-5);

    CATCH {
        when Negative {
            say .message;
        }
    }
}

Negative.new(n => -10).throw;
```

🦋 Atrodiet programmu failā [negative-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/negative-error.raku).

## Izvade

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Komentāri

1. `Negative is Exception` ļauj jums izmest šo klasi. Tās metode `message` uzbūvē tekstu no atribūta `n`.

1. `check` pārbauda savu ievadi. Negatīvam skaitlim tā izmet paša definēto izņēmumu. Izņēmums iziet ārā no `check`. Tas nonāk līdz `CATCH` blokā, kas izsauca `check`. Tur `when Negative` tam atbilst pēc tipa. Tad `CATCH` izdrukā paziņojumu. Tas ir ļoti parasts un īsts paša definētu izņēmumu lietojums. Programma pārbauda savu ievadi. Sliktai vērtībai tā izmet sava tipa izņēmumu.

1. Kāpēc ap izsaukumu ir `{ … }`? Fāzeris `CATCH` apstrādā tikai izņēmumus no **sava bloka**. Tas ir bloks, kura iekšā ir `CATCH`. Šeit bloks satur izsaukumu `check(-5)` kopā ar tā `CATCH`. Izsaukums var neizdoties, un `CATCH` to sargā. Tāpēc `CATCH` noķer izņēmumu tieši šeit. Tad programma turpina darbu tūlīt aiz bloka. Un ja bloka nav? Tad `CATCH` darbojas visai programmai. Tas noķer izņēmumu. Bet tad programma vienkārši beidzas. Nav labas vietas, kur turpināt.

1. Pēdējā rinda, `Negative.new(n => -10).throw`, parāda pretējo gadījumu. Šī rinda ir **ārpus** bloka. Tāpēc izņēmumu nenoķer nekas. Izņēmums paceļas līdz pašai augšai. Tad programma mirst jeb apstājas ar kļūdu. Tā izdrukā paziņojumu standarta kļūdu plūsmā. Tur tā izdrukā arī izsaukumu atskaiti. Izsaukumu atskaite parāda, kurā koda vietā notika kļūda. Tad programma beidzas ar izejas kodu, kas nav `0`. Tā notiek ar katru izņēmumu, ko jūs nenoķerat. Un tieši tāpēc pirmajam izmetienam vajadzēja `CATCH`. Bez tā programma nevar turpināt.

{% include nav.html %}
