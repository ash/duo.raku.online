---
title: 'Risinājums: Negatīva skaitļa kļūda'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `Negative is Exception` dod iespēju izmest šo klasi. Tās metode `message` uzbūvē tekstu no atribūta `n`.

1. `check` pārbauda savu ievadi un negatīvam skaitlim izmet paša definēto izņēmumu. Izņēmums ceļo ārā no `check` līdz `CATCH` blokā, kas to izsauca. Tur `when Negative` tam atbilst pēc tipa un izdrukā paziņojumu. Tas ir ļoti izplatīts, īsts paša definētu izņēmumu lietojums. Kods pārbauda savu ievadi un ziņo par sliktām vērtībām ar sava tipa izņēmumu.

1. Kāpēc ap izsaukumu ir `{ … }`? Fāzeris `CATCH` apstrādā tikai tos izņēmumus, kas izmesti **blokā, kurā tas atrodas**. Bloks saliek kopā riskanto `check(-5)` un `CATCH`, kas to sargā. Tāpēc izņēmums tiek noķerts tieši šeit, un programma turpinās tūlīt aiz bloka. Bez bloka `CATCH` tā vietā sargātu visu programmu. Tas noķertu izņēmumu, bet tad programma vienkārši beigtos. Nebūtu dabiskas vietas, kur turpināt.

1. Pēdējais `Negative.new(n => -10).throw` parāda šīs lietas otru pusi. Tas ir **ārpus** bloka, tāpēc to nenoķer nekas. Izņēmums paceļas līdz pašai augšai, un programma mirst. Tā izdrukā paziņojumu un izsaukumu atskaiti standarta kļūdu plūsmā. Tad tā iziet ar statusu, kas nav nulle. Tas notiek ar jebkuru izņēmumu, ko jūs nenoķerat. Un tieši tāpēc pirmajam izmetienam bija vajadzīgs `CATCH`, lai izdzīvotu.

{% include nav.html %}
