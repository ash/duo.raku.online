---
title: 'Risinājums: Dzīves posms pēc vecuma'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Šajā risinājumā ir divi `when` veidi. Pirmais ir *nosacījums*, `$_ < 0`. Šeit `$_` ir tēma no `given`. Šis nosacījums noķer vecumus, kas nav loģiski. Pārējie `when` bloki ir *diapazoni*. Tie sadala pareizos vecumus pa posmiem.

1. Secība ir svarīga. Negatīvā vecuma pārbaude ir pirmā. Tāpēc tā izpildās pirms visiem diapazoniem. Vērtība `30` ir diapazonā `20..64`. Tāpēc programma izdrukā `adult`.

1. `default` bloks ir visiem vecumiem no 65 un vairāk. Neviens diapazons sarakstā neietver šos vecumus.

Ir arī cits veids. Ļaujiet `default` noķert *nederīgo* ievadi. Uzskaitiet visus zināmos posmus. Uzrakstiet `senior` kā nosacījumu `$_ >= 65`. Viss pārējais ir nederīgs, piemēram, negatīvs vecums:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Šeit `default` tiešām nozīmē “nekas no augstāk minētā”. Kura versija ir labāka? Jūs varat izvēlēties. Vai nederīgais gadījums ir rets? Tad ielieciet pārbaudi pirmo. Vai jūs skaidri uzskaitāt visus derīgos posmus? Tad padariet nederīgo gadījumu par `default`.

{% include nav.html %}
