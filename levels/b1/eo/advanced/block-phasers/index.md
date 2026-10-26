---
title: Blok-rilataj faziloj
translations_gpt:
---

{% include menu.html %}

Raku havas fazilojn por la tuta programo, sed ĝi havas ankaŭ aliajn. Ĉi tiuj faziloj estas ligitaj al la vivo de unu sola bloko aŭ buklo.

## Eniro kaj eliro de bloko

La fazilo `ENTER` ruliĝas ĉiufoje, kiam la programo eniras blokon. La fazilo `LEAVE` ruliĝas ĉiufoje, kiam ĝi eliras el la bloko. Ne gravas, sur kiu linio vi skribas ilin:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

La eligo montras, ke `ENTER` ruliĝas unue kaj `LEAVE` ruliĝas laste. La korpo de la bloko ruliĝas inter ili:

```
before block
entering
inside
leaving
after block
```

`LEAVE` estas aparte utila, ĉar ĝi ruliĝas eĉ se la bloko finiĝas frue. Tial ĝi estas fidinda loko por liberigi rimedon.

Fazilo povas enhavi plenan `{ }` blokon anstataŭ unu deklaro. Vi ankaŭ povas havi plurajn. Kiam bloko havas pli ol unu `LEAVE`, ili ruliĝas en inversa ordo. Tiu, kiu estis difinita laste, ruliĝas unue. Do la bloko funkcias kiel stako, de supre malsupren:

```raku
say 'open A';
{
    LEAVE {
        say 'close A';
    }
    say 'open B';
    LEAVE {
        say 'close B';
    }
    say 'work';
}
say 'done';
```

La programo malfermas la rimedon `A` unue kaj fermas ĝin laste:

```
open A
open B
work
close B
close A
done
```

Ĉi tiu ordo «laste en, unue el» estas ĝuste tio, kion vi bezonas por purigado. La afero, kiun vi preparis laste, estas forigata unue. La fazilo `END` de la tuta programo funkcias same. Pluraj `END`-blokoj ankaŭ ruliĝas en ordo inversa al tiu, en kiu vi skribis ilin.

## Buklaj faziloj

Ene de bukloj estas tri pliaj faziloj por la stadioj de la buklo. `FIRST` ruliĝas unufoje antaŭ la unua paŝo, kaj `LAST` ruliĝas unufoje post la lasta. `NEXT` ruliĝas ĉe la fino de ĉiu paŝo:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Jen la eligo de la buklo:

```
-- first
body 1
-- next (was 1)
body 2
-- next (was 2)
body 3
-- next (was 3)
-- last
```

Kiel aliaj faziloj, `FIRST`, `NEXT` kaj `LAST` povas esti ie ajn en la kodo. Ĉiu el ili ruliĝas en sia propra momento.

{% include nav.html %}
