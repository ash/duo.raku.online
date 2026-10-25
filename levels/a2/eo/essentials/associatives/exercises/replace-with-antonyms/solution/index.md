---
title: 'Solvo: Anstataŭigi per antonimoj'
---

{% include menu.html %}

Unue, ni prenas la enhavon de la dosiero [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Ni kopias ĝin en la solvan dosieron [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). Poste buklo iras tra la eniraj argumentoj. La buklo serĉas ĉiun vorton en la vortaro. Se la vorto estas tie, la buklo prenas ĝian antonimon. Se ne, la programo uzas la originalan vorton.

## Kodo

Jen la solvo. Ĝi montras nur parton de la vortaro.

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

1. La operatoro `//` estas la [difinita-aŭ operatoro](/eo/essentials/scalar-variables/defined-or-operator). Ĝi redonas la unuan difinitan operandon.
1. Ĉiuj ŝlosiloj en la haketo estas vortoj. Ili aspektas kiel identigiloj. Do vi ne bezonas citilojn ĉirkaŭ ili. Vi ankaŭ povas skribi la haketon tiel:

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
