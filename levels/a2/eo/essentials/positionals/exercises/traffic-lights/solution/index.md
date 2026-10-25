---
title: 'Solvo: Trafiklumo'
---

{% include menu.html %}

Jen la ideo de la solvo. Tabelo tenas la kvar statojn de la trafiklumoj. Ni ‘cikligas la indeksadon’ de ĉi tiu tabelo:

```raku
my @lights = <flava ruĝa flava verda>;
```

Komence, nombru la sekundojn ekde la starto. Uzu ĉi tiun nombron rekte kiel indekson en la tabelo. Poste, la nombro fariĝas pli granda ol 3. Tiam vi iras reen al la komenco de la tabelo. La modulo-operatoro `%` faras tion. La longo de la tabelo estas `@lights.elems`. Sed ĉi tie vi ne bezonas voki la metodon `elems`. La tabelo estas operando de `%`. Do Raku konvertas la nomon de la tabelo al nombro. Ĉi tiu konverto donas la nombron de elementoj.

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

Rulu la programon. Poste provu ankaŭ aliajn valorojn en la programo.

```console
$ raku exercises/positionals/traffic-lights.raku
verda
flava
ruĝa
```

{% include nav.html %}
