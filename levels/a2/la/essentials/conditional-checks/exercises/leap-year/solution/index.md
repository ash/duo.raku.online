---
title: 'Solutio: Annus bisextilis'
---

{% include menu.html %}

## Disclaimer

Solutio infra ad exercitationem est. Te exercet in probationibus condicionalibus. Raku classem `Date` in-builtam habet. In vita reali, methodos eius discere potes. De hac classe in secunda parte cursus discimus.

## Solutio

Hi gradus dicunt si annus est bissextilis:

1. si annus non est divisibilis per 4 => annus communis
1. si annus non est divisibilis per 100 => annus bissextilis
1. si annus non est divisibilis per 400 => annus communis
1. aliter => annus bissextilis

Raku typos in-builtos pro diebus et horis habet. Eos quoque adhibere potes. Itaque secunda pars cursus hoc munus iterum habet.

## Codex 1

Prima solutio gradus supra accurate sequitur:

```raku
my $year = prompt 'Annus: ';

if $year % 4 {
    say 'Annus communis';
}
elsif $year % 100 {
    say 'Annus bissextilis';
}
elsif $year % 400 {
    say 'Annus communis';
}
else {
    say 'Annus bissextilis';
}
```

🦋 Inveni programmam in archivo [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Codex 2

Secunda solutio totam logicam in unam expressionem ponit. Uncos rotundos non semper requiris. Hic eos addimus, et codex clarior fit.

```raku
my $year = prompt 'Annus: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Annus bissextilis' !! 'Annus communis';
```

🦋 Inveni programmam in archivo [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Exitus

Proba utrumque programma cum casibus gravissimis. Exempli gratia, adhibe 1900, 2000, 2020, et 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Annus: 1900
Annus communis

$ raku exercises/conditional-checks/leap-year.raku
Annus: 2000
Annus bissextilis
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Annus: 2020
Annus bissextilis

$ raku exercises/conditional-checks/leap-year-formula.raku
Annus: 2021
Annus communis
```

%%tipblock
## `%%` vs `%`

Interdum Raku `True` aut `False` requirit. Hoc contextum Booleanum vocamus. In contextu Booleano, `%%` et `%` eventus contrarios dant. Si unus `True` dat, alter `False` dat. Hoc facto uti potes. Elige unum ex duobus operatoribus. Tum non necesse est comparationem cum zero scribere.

```raku
say ?(100 % 3);    # Verum
say 100 % 3 != 0;  # Verum

say ?(100 %% 3);   # Falsum
say 100 %% 3 != 0; # Falsum
```
%%/tipblock

{% include nav.html %}
