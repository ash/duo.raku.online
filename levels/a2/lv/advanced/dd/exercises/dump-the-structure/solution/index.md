---
title: 'Risinājums: Izgūt datu struktūru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Atrodiet programmu failā [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Izvade

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Komentāri

1. `dd @data` izdrukā, kas ir masīvā. Tā to izdrukā kodam līdzīgā formā. Šī izvade aiziet uz standarta kļūdu plūsmu.

1. Metode `.raku` atgriež to pašu formu kā virkni. Programma ieliek šo virkni parastā ziņojumā. Šim nolūkam tā izpilda kodu virknes iekšā. Tad `say` izdrukā ziņojumu standarta izvadē.

1. Šeit abas rindas izskatās vienādas. Bet tās iet uz dažādām izvades plūsmām. Pirmā rinda nāk no `dd` un iet uz standarta kļūdu plūsmu. Otrā rinda nāk no `say` un iet uz standarta izvadi. Salīdziniet šīs divas palaišanas:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
