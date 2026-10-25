---
title: 'Solvo: Anstataŭigi per antonimoj'
---

{% include menu.html %}

La solva dosiero, [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku), komenciĝas per kopio de [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Post tio, buklo iras tra la eniraj argumentoj. Ĝi provas trovi ĉiun vorton en la vortaro. Se ĝi povas, ĝi prenas la antonimon. Se ne ekzistas tia vorto en la vortaro, la originala vorto estas uzata.

## Kodo

La solvo estas sube, sed ĉi tie estas montrita nur parto de la vortaro.

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

🦋 Trovu la programon en la dosiero [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Eligo

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Komentoj

1. La operatoro `//` estas la [difinita-aŭ operatoro](/eo/essentials/scalar-variables/defined-or-operator). Ĝi redonas la unuan operandon, kiu estas difinita.
1. Ĉiuj ŝlosiloj en la haketo estas vortoj, kiuj aspektas kiel identigiloj. Do vi ne bezonas meti ilin inter citiloj. Tio signifas, ke vi ankaŭ povas krei la haketon tiel:

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
