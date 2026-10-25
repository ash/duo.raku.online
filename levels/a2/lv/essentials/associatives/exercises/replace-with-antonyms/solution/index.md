---
title: 'Risinājums: Aizstāt ar antonīmiem'
---

{% include menu.html %}

Vispirms mēs ņemam faila [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku) saturu. Mēs to nokopējam risinājuma failā [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). Tad cikls iet pār ievades argumentiem. Cikls meklē katru vārdu vārdnīcā. Ja vārds tur ir, cikls ņem tā antonīmu. Ja nav, programma izmanto oriģinālo vārdu.

## Kods

Šeit ir risinājums. Tas rāda tikai daļu no vārdnīcas.

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
1. Visas hash atslēgas ir vārdi. Tās izskatās kā identifikatori. Tāpēc tām nav vajadzīgas pēdiņas. Jūs varat uzrakstīt hash arī šādi:

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
