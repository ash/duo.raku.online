---
title: 'Solvo: Trafiklumo'
---

{% include menu.html %}

La ideo de la solvo estas ‘cikligi la indeksadon’ de tabelo. La tabelo tenas la kvar statojn de la trafiklumoj:

```raku
my @lights = <flava ruĝa flava verda>;
```

Komence, la nombro de sekundoj ekde la starto estas uzata rekte kiel indekso. Kiam ĝi estas pli granda ol 3, vi iras reen al la komenco de la tabelo. La modulo-operatoro `%` faras tion. La longo de la tabelo estas `@lights.elems`. Sed kun `%`, vi ne bezonas voki la metodon `elems`. La tabelo estas operando de `%`, do ĝia nomo estas konvertata al nombro. Ĉi tiu konverto estas farita por doni la nombron de elementoj.

## Kodo

Jen la solvo:

```raku
my @lights = <flava ruĝa flava verda>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Trovu la programon en la dosiero [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Eligo

Rulu la programon. Provu ankaŭ aliajn valorojn en la programo.

```console
$ raku exercises/positionals/traffic-lights.raku
verda
flava
ruĝa
```

{% include nav.html %}
