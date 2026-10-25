---
title: 'Solutio: Annus bisextilis'
---

{% include menu.html %}

## Disclaimer

Solutio infra est exercitatio cum probationibus condicionalibus. Pro veris muneribus, methodos classis `Date` in-builtae discere potes. Haec classis in secunda parte cursus venit.

## Solutio

Hic algorithmus dicit num annus bissextilis sit:

1. si annus non est divisibilis per 4 => annus communis
1. si annus non est divisibilis per 100 => annus bissextilis
1. si annus non est divisibilis per 400 => annus communis
1. aliter => annus bissextilis

Nota quod Raku typos in-builtos habet ad operandum cum diebus et horis. Itaque ad hoc munus in secunda parte cursus redibimus.

## Codex 1

Prima solutio accurate facit quod gradus supra dicunt:

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

In secunda solutione, tota logica in una expressione est. Parentheses non semper necessariae sunt, sed hic codicem clariorem faciunt.

```raku
my $year = prompt 'Annus: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Annus bissextilis' !! 'Annus communis';
```

🦋 Inveni programmam in archivo [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Exitus

Proba utrumque programma cum casibus gravissimis, exempli gratia, 1900, 2000, 2020 et 2021.

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

Nota quod in contextu Booleano operatores `%%` et `%` eventus contrarios dant. Hac re uti potes ad operatorem rectum eligendum. Tum non necesse est comparationem cum zero scribere.

```raku
say ?(100 % 3);    # Verum
say 100 % 3 != 0;  # Verum

say ?(100 %% 3);   # Falsum
say 100 %% 3 != 0; # Falsum
```
%%/tipblock

{% include nav.html %}
