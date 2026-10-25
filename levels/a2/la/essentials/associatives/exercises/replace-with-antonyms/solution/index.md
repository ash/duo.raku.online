---
title: 'Solutio: Reponere cum antonyma'
---

{% include menu.html %}

Primum contenta fasciculi [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku) sumimus. Ea in fasciculum solutionis [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku) effingimus. Deinde circulus per argumenta inputata it. Circulus quodque verbum in dictionario quaerit. Si verbum ibi est, circulus antonymum eius accipit. Si non est, programma verbum originale adhibet.

## Codex

Hic est solutio. Tantum partem dictionarii ostendit.

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

🦋 Invenire programmatum in fasciculo [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Exitus

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Commentarii

1. Operator `//` est [operator definitus-vel](/la/essentials/scalar-variables/defined-or-operator). Primum operandum definitum reddit.
1. Omnes claves in hash sunt verba. Similes identificatoribus sunt. Itaque quotationes circa eas non requiris. Hash etiam sic scribere potes:

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
