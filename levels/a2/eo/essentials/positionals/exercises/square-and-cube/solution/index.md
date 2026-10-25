---
title: 'Solvo: Kvadrato kaj kubo'
---

{% include menu.html %}

## Kodo 1

Simpla solvo uzas la operatoron `**`.

```raku
my $n = @*ARGS[0];
say $n ** 2;
say $n ** 3;
```

🦋 Trovu la programon en la dosiero [square-and-cube.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube.raku).

## Kodo 2

Alia solvo aspektas iom pli bela. Ĝi uzas Unikodajn superskriptojn. Tiuj estas malgrandaj ciferoj supre en la linio.

```raku
my $n = @*ARGS[0];
say $n²;
say $n³;
```

🦋 Trovu la programon en la dosiero [square-and-cube-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube-2.raku).

## Eligo

Rulu la programon kelkajn fojojn. Testu ĝin kun malsamaj nombroj.

```console
$ raku exercises/positionals/square-and-cube.raku 5
25
125
```

{% include nav.html %}
