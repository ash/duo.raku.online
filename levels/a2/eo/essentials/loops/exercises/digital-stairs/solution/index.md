---
title: 'Solvo: Digitalaj ŝtupoj'
---

{% include menu.html %}

La programo uzas du buklojn kaj du intervalojn.

## Kodo

Jen unu ebla solvo:

```raku
my $size = prompt 'Enigu la grandecon: ';

for 1..$size -> $n {
    .print for 1..$n;
    print "\n";
}
```

🦋 Trovu la programon en la dosiero [digital-stairs.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/digital-stairs.raku).

## Eligo

Rulu la programon kaj enigu la grandecon:

```console
$ raku exercises/loops/digital-stairs.raku
Enigu la grandecon: 7
1
12
123
1234
12345
123456
1234567
```

## Komento

Rigardu, kiel la programo presas la nunan ciferon:

```raku
.print for 1..$n;
```

Same kiel `say`, vi povas voki `print` kiel metodon. Ĉi tie, ĝi estas vokata sur la [temvariablo](/eo/essentials/loops/topic) `$_`.

{% include nav.html %}
