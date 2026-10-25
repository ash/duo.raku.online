---
title: 'Solvo: Presi serion de nombroj'
---

{% include menu.html %}

Estas pli ol unu maniero solvi ĉi tiun problemon.

## Kodo 1

La unua solvo estas pli mallonga kaj pli tipa por Raku.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

.say for $begin .. $end;
```

🦋 Find the program in the file [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Kodo 2

Dua ebla solvo uzas la deklaron `loop`.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Find the program in the file [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Kiel vi vidas, la unua varianto estas multe pli mallonga kaj montras la ideon pli klare.

## Diskuto

La unua varianto de la programo uzas la [postfiksan formon de la `for` buklo](/eo/essentials/loops/postfix-for). La dua programo uzas `loop`.

## Eligo

Rulu la programon kaj enigu la du nombrojn en la konzolo. Ambaŭ variantoj donas la saman eligon.

```console
$ raku exercises/positionals/series-of-numbers.raku
Begin: 15
End: 19
15
16
17
18
19
```

{% include nav.html %}
