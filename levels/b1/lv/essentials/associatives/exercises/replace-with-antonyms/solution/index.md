---
title: 'Risinājums: Aizstāt ar antonīmiem'
---

{% include menu.html %}

Risinājuma fails [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku) sākas ar faila [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku) kopiju. Pēc tam cikls iet pār ievades argumentiem. Tas mēģina atrast katru vārdu vārdnīcā. Ja tas izdodas, cikls ņem antonīmu. Ja vārdnīcā šāda vārda nav, tiek izmantots oriģinālais vārds.

## Kods

Risinājums ir zemāk, bet šeit redzama tikai daļa no vārdnīcas.

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    'achieve' => 'fail',
    # . . .
    'wrong' => 'right',
    'young' => 'old'    
;

for @*ARGS -> $word {
    say %dictionary{$word} // $word;
}
```

🦋 Atrodiet programmu failā [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Izvade

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Komentāri

1. `//` operators ir [definētais-vai operators](/lv/essentials/scalar-variables/defined-or-operator). Tas atgriež pirmo operandu, kas ir definēts.
1. Visas hash atslēgas ir vārdi, kas izskatās kā identifikatori. Tāpēc tās nav jāliek pēdiņās. Tas nozīmē, ka hash var izveidot arī šādi:

```raku
my %dictionary =
    above => 'below',
    absent => 'present',
    achieve => 'fail',
    # . . .
    wrong => 'right',
    young => 'old'    
;
```

{% include nav.html %}
