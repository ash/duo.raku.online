---
title: Citante ĉenajn tabelojn
---

{% include menu.html %}

Kelkaj ĉenaj tabeloj havas nur mallongajn ĉenojn sen spacoj en ili. Por tiaj tabeloj, Raku proponas belan sintakson por doni iliajn valorojn.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Vi povas decidi, ĉu aldoni pliajn spacojn ĉirkaŭ la angulaj krampoj aŭ ne. La kompililo akceptas ambaŭ eblojn.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Ambaŭ formoj estas samaj kiel ĉi tiu simpla, rekta versio:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Tabelo vs Listo

Notu, ke en la ekzemploj supre, la citaĵo `< . . . >` kreas `List`, ne `Array`. Vi povas kontroli tion, se vi vokas la metodon `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Tamen, se vi asignas ĝin al tabelo, la tabelo ricevas la samajn elementojn.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
