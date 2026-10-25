---
title: 'Solutio: Print seriem numerorum'
---

{% include menu.html %}

Plus quam una via est ad hoc problema solvendum.

## Codex 1

Prima solutio brevior et magis Raku propria est.

```raku
my $begin = prompt 'Incipe: ';
my $end = prompt 'Finis: ';

.say for $begin .. $end;
```

🦋 Inveni codicem fontem in archivo [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Codex 2

Secunda solutio possibilis enuntiatione `loop` utitur.

```raku
my $begin = prompt 'Incipe: ';
my $end = prompt 'Finis: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Inveni codicem fontem in archivo [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Ut vides, prima varians multo brevior est et ideam clarius ostendit.

## Disputatio

Prima varians programmatis [formam postfixam ansae `for`](/la/essentials/loops/postfix-for) adhibet. Secundum programma `loop` adhibet.

## Exitus

Curre programma et duos numeros in consola insere. Utraque varians idem output dat.

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
