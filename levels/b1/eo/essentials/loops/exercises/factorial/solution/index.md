---
title: 'Solvo: Faktorialo'
---

{% include menu.html %}

La faktorialo de `N` estas la produkto de ĉiuj entjeroj de 1 ĝis kaj inkluzive `N`. Ekzemple, la faktorialo de 4 estas 1 * 2 * 3 * 4 = 24.

## Kodo

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Trovu la programon en la dosiero [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Eligo

Rulu la programon kelkajn fojojn kaj provu malsamajn valorojn de `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Komentoj

Ĉi tiu programo uzas la operatoron `*=`, mallongan formon por multipliko kun asigno: `$x *= $y` estas la sama kiel `$x = $x * $y`.

Vi ankaŭ povas uzi ‘plenan’ buklon anstataŭ la postfiksa formo:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Pli pri ĉi tiu temo

Ni revenos al ĉi tiu tasko plurajn fojojn. En ĉi tiu parto de la kurso, ni ankaŭ solvos ĝin rekursive.

En la dua parto de la kurso, ni lernos pri la tiel nomataj reduktaj operatoroj, kiuj faras la solvon tre simpla. Ni ankaŭ vidos, kiel difini vian propran operatoron `!`, por ke vi povu skribi `$n!` por kalkuli faktorialon. Fine, ni vidos alian interesan solvon, kiam ni parolos pri la `where` klaŭzo.

{% include nav.html %}
