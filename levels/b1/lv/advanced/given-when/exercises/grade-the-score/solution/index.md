---
title: 'Risinājums: Dzīves posms pēc vecuma'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $age = 30;

given $age {
    when $_ < 0 { say 'invalid' }
    when 0..12  { say 'child' }
    when 13..19 { say 'teenager' }
    when 20..64 { say 'adult' }
    default     { say 'senior' }
}
```

🦋 Jūs varat atrast pirmkodu failā [grade-the-score.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/grade-the-score.raku).

## Izvade

```
adult
```

## Komentāri

1. Šis risinājums apvieno divus `when` veidus. Pirmais ir *nosacījums*, `$_ < 0`, kur `$_` ir tēma, ko nosaka `given`. Tas izfiltrē nederīgos vecumus. Pārējie ir *diapazoni*, kas grupē derīgos vecumus pa posmiem.

1. Secībai ir nozīme. Negatīvā vecuma pārbaude ir pirmā. Tāpēc tā izpildās, pirms tiek pārbaudīts kāds diapazons. Vērtība `30` ir diapazonā `20..64`, tāpēc programma izdrukā `adult`.

1. `default` bloks aptver visus vecumus no 65 un vairāk. Neviens no uzskaitītajiem diapazoniem šos vecumus neaptver.

Jūs varat to arī apgriezt otrādi un ļaut `default` noķert *nederīgo* ievadi. Uzskaitiet visus zināmos posmus, arī `senior` kā nosacījumu `$_ >= 65`. Visu, kas paliek pāri, piemēram, negatīvu vecumu, uzskatiet par nederīgu:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Šeit `default` ir īsts atzars “nekas no augstāk minētā”. Kura versija lasās labāk, ir gaumes jautājums. Ielieciet pārbaudi pirmo, ja nederīgais gadījums ir izņēmums. Vai arī padariet to par `default`, ja visi derīgie posmi ir skaidri uzskaitīti.

{% include nav.html %}
