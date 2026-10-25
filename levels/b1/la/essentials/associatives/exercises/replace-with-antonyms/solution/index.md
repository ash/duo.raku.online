---
title: 'Solutio: Reponere cum antonyma'
---

{% include menu.html %}

Fasciculus solutionis, [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku), primum contenta fasciculi [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku) continet. Postea circulus per argumenta inputata it. Quodque verbum in dictionario invenire conatur. Si potest, antonymum accipit. Si nullum tale verbum in dictionario est, verbum originale adhibetur.

## Codex

Solutio infra est, sed hic tantum pars dictionarii ostenditur.

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
1. Omnes claves in hash sunt verba quae identificatoribus similia sunt. Itaque eas in quotationibus ponere non debes. Ergo hash etiam hoc modo creare potes:

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
