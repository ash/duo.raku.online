---
title: 'Risinājums: Izgūt datu struktūru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `dd @data` izdrukā masīva saturu kodam līdzīgā formā. Šī izvade aiziet uz standarta kļūdu plūsmu.

1. Metode `.raku` atgriež to pašu atveidojumu kā virkni. Pēc tam šo virkni ievieto parastā ziņojumā ar kodu figūriekavās. Tad `say` izdrukā ziņojumu standarta izvadē.

1. Abas rindas šeit izskatās vienādas, bet tās iet pa dažādām izvades plūsmām. Pirmā nāk no `dd` un iet uz standarta kļūdu plūsmu. Otrā nāk no `say` un iet uz standarta izvadi. Salīdziniet šo:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
