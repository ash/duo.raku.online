---
title: 'Solvo: La valoro de e'
---

{% include menu.html %}

## Malgarantio

Raku havas enkonstruitan konstanton `e`. Ĝi tuj donas la respondon al ĉi tiu tasko. La solvo sube estas nur por lernado.

## Kodo

La formulo en ĉi tiu tasko enhavas faktorion. Ni jam havas almenaŭ du manierojn kalkuli ĝin, kaj pliaj sekvos. La programo sube difinas du funkciojn. Unu kalkulas la faktorion, kaj la alia kalkulas la partan sumon de la formulo.

La funkcio devas funkcii ankaŭ sen argumentoj. En tiu kazo, la buklo ruliĝas fiksitan nombron da fojoj. Do ni povas doni al la parametro [defaŭltan valoron](/eo/essentials/functions/default-values): `sub e-approx($max = 100)`.

En la kodo, rimarku, ke ambaŭ funkcioj kolektas siajn rezultojn laŭ simila maniero. Ili uzas [postfiksan `for` buklon](/eo/essentials/loops/postfix-for) tra [intervalo](/eo/essentials/ranges).

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

Kun 10 kaj 100 rondoj de la buklo, ni ricevas ĉi tiujn rezultojn. Provu ankaŭ aliajn valorojn de `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
