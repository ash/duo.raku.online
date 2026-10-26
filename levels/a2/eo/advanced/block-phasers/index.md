---
title: Blok-rilataj faziloj
translations_gpt:
---

{% include menu.html %}

Vi jam konas la fazilojn por la tuta programo. Raku ankaŭ havas fazilojn por unu bloko aŭ unu buklo. Ili apartenas al la vivo de tiu bloko aŭ buklo.

## Eniri blokon kaj eliri el ĝi

La fazilo `ENTER` ruliĝas ĉiufoje, kiam la programo eniras blokon. La fazilo `LEAVE` ruliĝas ĉiufoje, kiam la programo forlasas la blokon. Ilia loko en la bloko ne gravas:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Rigardu la eligon. `ENTER` ruliĝas unue, kaj `LEAVE` ruliĝas laste. La korpo de la bloko estas inter ili:

```
before block
entering
inside
leaving
after block
```

`LEAVE` estas tre utila. Ĝi ruliĝas eĉ kiam la bloko finiĝas frue. Do tie vi povas sekure liberigi rimedon, ekzemple malfermitan dosieron.

Fazilo povas havi tutan `{ }` blokon, ne nur unu deklaron. Vi ankaŭ povas havi plurajn fazilojn. Bloko povas havi pli ol unu `LEAVE`. Tiam ili ruliĝas en inversa ordo. La lasta ruliĝas unue. Tio funkcias kiel stako. Kio eniras laste, eliras unue:

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

La programo malfermas la rimedon `A` unue. Ĝi fermas ĝin laste:

```
open A
open B
work
close B
close A
done
```

Ĉi tiu ordo estas «laste en, unue el». Ĝi estas ĝuste la bona ordo por purigado. Kion vi preparas laste, tion vi forigas unue. La fazilo `END` por la tuta programo funkcias same. Pluraj `END`-blokoj ankaŭ ruliĝas en inversa ordo.

## Faziloj por bukloj

Bukloj havas tri pliajn fazilojn. Ili markas la paŝojn de la buklo. `FIRST` ruliĝas unufoje, antaŭ la unua rondo. `LAST` ruliĝas unufoje, post la lasta rondo. `NEXT` ruliĝas ĉe la fino de ĉiu rondo:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

La buklo presas:

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

Estas same kiel ĉe aliaj faziloj. Vi povas skribi `FIRST`, `NEXT` kaj `LAST` ie ajn en la buklo. Ĉiu ruliĝas en sia propra tempo.

{% include nav.html %}
