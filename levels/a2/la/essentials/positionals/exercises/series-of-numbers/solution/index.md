---
title: 'Solutio: Print seriem numerorum'
---

{% include menu.html %}

Hoc problema plus quam uno modo solvere potes.

## Codex 1

Prima solutio brevior est. Etiam magis in stilo Raku est.

```raku
my $begin = prompt 'Incipe: ';
my $end = prompt 'Finis: ';

.say for $begin .. $end;
```

🦋 Inveni codicem fontem in archivo [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Codex 2

Secunda solutio enuntiatione `loop` utitur.

```raku
my $begin = prompt 'Incipe: ';
my $end = prompt 'Finis: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Inveni codicem fontem in archivo [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Ut vides, prima varians multo brevior est. Etiam ideam clarius ostendit.

## Disputatio

Prima varians [formam postfixam ansae `for`](/la/essentials/loops/postfix-for) adhibet. Hac in forma, `for` post sententiam venit. Secundum programma `loop` adhibet.

## Exitus

Curre programma. Duos numeros in consola insere. Utraque varians eundem eventum imprimit.

```console
$ raku exercises/positionals/series-of-numbers.raku
Incipe: 15
Finis: 19
15
16
17
18
19
```

{% include nav.html %}
