---
title: 'Solvo: La valoro de e'
---

{% include menu.html %}

## Malgarantio

Raku jam havas konstanton `e`. Ĝi tuj donas la respondon al ĉi tiu tasko. La solvo sube estas nur por lernado.

## Kodo

La formulo enhavas faktorion. Ni jam konas almenaŭ du manierojn trovi faktorion. Pliaj manieroj venas poste. La programo sube havas du funkciojn. Unu funkcio trovas la faktorion. La alia adicias la unuajn elementojn de la formulo.

La funkcio devas funkcii ankaŭ sen argumentoj. Tiam la buklo ruliĝas fiksitan nombron da fojoj. Do ni donas al la parametro [defaŭltan valoron](/eo/essentials/functions/default-values): `sub e-approx($max = 100)`.

Rigardu la kodon. Ambaŭ funkcioj konstruas sian rezulton laŭ simila maniero. Ĉiu el ili havas [`for` ĉe la fino de linio](/eo/essentials/loops/postfix-for). Ĉi tiu buklo iras tra [intervalo](/eo/essentials/ranges).

Jen la solvo:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Trovu la programon en la dosiero [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Eligo

Jen la rezultoj por 10 kaj 100 rondoj de la buklo. Provu ankaŭ aliajn valorojn de `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
